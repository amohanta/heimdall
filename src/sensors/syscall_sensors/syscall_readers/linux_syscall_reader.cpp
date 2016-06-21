/*
 *  File Name : linux_syscall_reader.cpp
 *  
 *  Creation Date : 09-05-2016
 *
 *  Last Modified : Mon 20 Jun 2016 03:05:05 PM EDT
 *
 *  Created By : ronin-zero (浪人ー無)
 *
 */

//#include <sstream>      // Probably not needed...

#include "sensors/syscall_sensors/syscall_readers/linux_syscall_reader.h"

Linux_Syscall_Reader * Linux_Syscall_Reader::lsr_instance = NULL;

Linux_Syscall_Reader * Linux_Syscall_Reader::get_instance(){

    if ( !lsr_instance )
    {
        lsr_instance = new Linux_Syscall_Reader();
    }

    return lsr_instance;
}

Linux_Syscall_Reader * Linux_Syscall_Reader::get_instance( uint_fast8_t flags ){

    lsr_instance = get_instance();

    lsr_instance->configure( flags );

    return lsr_instance;
}

// Deconstructor
Linux_Syscall_Reader::~Linux_Syscall_Reader(){

    std::cout << "d'tor for Linux_Syscall_Reader called." << std::endl;
    
    stop_reading();
    set_self_filter( false );
    set_enter( false );
    set_exit( false );
}

uint_fast8_t Linux_Syscall_Reader::set_reading( bool on ){

    if ( on )
    {
        return start_reading();
    }
    else
    {
        return stop_reading();
    }
}

// CHECK: Shawn feels these are unnecessary.
// I agree, so commenting out for now.

/*
uint_fast8_t Linux_Syscall_Reader::toggle_reading(){

    return set_reading( !is_reading() );
}
*/

uint_fast8_t Linux_Syscall_Reader::start_reading(){

    file_mtx.lock();

    if ( !is_reading() )
    {
        trace_pipe_stream.open( FTRACE_DIR + TRACE_PIPE );

        if ( write_to_file ( FTRACE_DIR + TRACING_ON, "1" ) && trace_pipe_stream.is_open() )
        {
            status |= READING_ON;

            std::cout << "Opened File " << FTRACE_DIR + TRACE_PIPE << std::endl;
        }
        else
        {
            std::cerr << "Could not start reading." << std::endl;
        }
    }

    file_mtx.unlock();

    return status;
}

uint_fast8_t Linux_Syscall_Reader::stop_reading(){

    file_mtx.lock();

    if ( is_reading() )
    {
        trace_pipe_stream.close();

        if( write_to_file ( FTRACE_DIR + TRACING_ON, "0" ) && !trace_pipe_stream.is_open() )
        {
            std::cout << "Closed the trace pipe." << std::endl;

            status &= ~READING_ON;
        }
        else
        {
            std::cerr << "Could not stop reading." << std::endl;
        }
    } 

    file_mtx.unlock();

    return status;
}

uint_fast8_t Linux_Syscall_Reader::set_self_filter( bool filter ){

    pid_t self_pid = getpid();

    bool success = true;

    string filter_content = ( filter ? "common_pid != " + std::to_string( self_pid ) : "none" );

    for ( std::vector<string>::iterator it = filter_files.begin(); success && it != filter_files.end(); ++it )
    {
        success = write_to_file( *it, filter_content );
    }

    if ( success )
    {
        filter ? status |= FILTER_SELF : status &= ~FILTER_SELF;

        std::cout << "Succesfully wrote " << filter_content << " to filter files." << std::endl;
    }
    else
    {
        std::cerr << "FILTER FAILURE: " << filter_content << " could not be written to at least one filter file." << std::endl;
    }
    
    return status;
}

uint_fast8_t Linux_Syscall_Reader::set_enter( bool on ){

    // "enter" is what will be written to the file.
    // This ternary operator sets it to 1 if we are setting sys_enter on
    // and sets it to 0 if we are setting sys_enter off.

    uint_fast8_t enter = on ? 1 : 0;

    if( write_to_file( FTRACE_DIR + EVENTS_DIR + RAW_SYSCALLS_DIR + SYS_ENTER_DIR + ENABLE, std::to_string( enter ) ) )
    {
        // Set the SYS_ENTER bit on status to 1 or 0 depending
        // on whether "on" is true or false (respectively).

        ( on ) ? status |= SYS_ENTER : status &= ~SYS_ENTER;
    }
    else
    {
        std::cerr << "Couldn't set sys_enter to " << std::to_string( enter ) << std::endl;
    }

    return status;
}

uint_fast8_t Linux_Syscall_Reader::set_exit( bool on ){

    // "exit" is what will be written to the file.
    // This ternary operator sets it to 1 if we are setting sys_exit on
    // and sets it to 0 if we are setting sys_exit off.

    uint_fast8_t exit = on ? 1 : 0;

    if ( write_to_file ( FTRACE_DIR + EVENTS_DIR + RAW_SYSCALLS_DIR + SYS_EXIT_DIR + ENABLE, std::to_string( exit ) ) )
    {
        // Set the SYS_EXIT bit on status to 1 or 0 depending
        // on whether "on" is true or false (respectively).

        ( on ) ? status |= SYS_EXIT : status &= ~SYS_EXIT;
    }
    else
    {
        std::cerr << "Couldn't set sys_exit to " << std::to_string(exit) << std::endl;
    }

    return status;
}

uint_fast8_t Linux_Syscall_Reader::reading_status(){

    return status;

}

bool Linux_Syscall_Reader::is_reading(){

    return ( status & READING_ON );
}

Sensor_Data * Linux_Syscall_Reader::read_syscall(){

    string tmp = "";
    Sensor_Data * data = NULL;

    file_mtx.lock();

    if ( is_reading() && trace_pipe_stream.is_open() && !trace_pipe_stream.eof() )
    {
        getline( trace_pipe_stream, tmp );
   
        if ( tmp.length() > MIN_LENGTH )
        {
            data = new Sensor_Data( os, data_type, tmp, "" );
        }
    }

    file_mtx.unlock();

    return data; 
}

uint_fast8_t Linux_Syscall_Reader::configure( uint_fast8_t flags ){

    set_self_filter( flags & FILTER_SELF );
    set_exit( flags & SYS_EXIT );
    set_enter( flags & SYS_ENTER );
    set_reading( flags & READING_ON );

    return status;
}

// Protected methods

Linux_Syscall_Reader::Linux_Syscall_Reader( uint_fast8_t flags ){

    status = 0x00;
    status = configure( flags );
}

bool Linux_Syscall_Reader::write_to_file( string filename, string output ){

    return file_write( filename, output, std::ofstream::out );
}

bool Linux_Syscall_Reader::append_to_file( string filename, string output ){

    return file_write( filename, output, std::ofstream::out | std::ofstream::app );
}

bool Linux_Syscall_Reader::file_write( string filename, string output, std::ios_base::openmode mode ){

    try
    {
        std::ofstream ofs( filename, mode );

        ofs << output << std::endl;

        ofs.close();

    }
    catch( std::ofstream::failure &write_err )
    {

        std::cerr << "\n\n Exception occurred when ";

        if ( std::ofstream::app | mode )
        {
            std::cerr << "appending to file.";
        }
        else
        {
            std::cerr << "writing to file.";
        }        

        std::cerr << "\n\nFilename: "<< filename << "\n\n";
        std::cerr << "Exception information:    \n\n";
        std::cerr << write_err.what() << "\n\n";
        std::cerr.flush();

        return false;
    }

    return true;
}
