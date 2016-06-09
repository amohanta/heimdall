/*
 *  File Name : syscall_logger.cxx
 *  
 *  Creation Date : 06-06-2016
 *
 *  Last Modified : Mon 06 Jun 2016 06:47:56 PM EDT
 *
 *  Created By : ronin-zero (浪人ー無)
 *
 */

#include "sensor_observers/syscall_logger.h"

// Here we do an OS check (like in the reader factory).
// As this logger will be on the same machine as the sensors,
// and we know it's a syscall logger,
// we can define them to be <OS>_Syscall_Record where
// <OS> is the operating system this is compiled on.
// Currently, only Linux is defined, so the default behavior
// will just dump the Data_Record's raw string.

#ifdef __linux__
#include "sensor_observers/data_records/linux/linux_syscall_record.h"
typedef Linux_Syscall_Record Syscall_Record;
#else
typedef Data_Record Syscall_Record;
#endif

Syscall_Logger::Syscall_Logger(){

    set_observing ( true );
    set_processing( true );
}

void Syscall_Logger::update(){

    // For this particular class,
    // we don't need update with no
    // arguments to do anything.
}

void Syscall_Logger::update( Sensor_Data data ){

    if ( observing )
    {
        data_queue.enqueue( data );
    }
}

void Syscall_Logger::set_observing( bool on ){

    observing = on;
}

void Syscall_Logger::set_processing( bool on ){

    processing = on;
}

bool Syscall_Logger::observing_status(){

    return observing;
}

bool Syscall_Logger::processing_status(){

    return processing;
}

void Syscall_Logger::start_observing(){

    observing = true;
}

void Syscall_Logger::start_processing(){

    if ( !processing )
    {
        processing = true;

        processing_thread = thread ( &Syscall_Logger::process, this );

        processing_thread.detach();
    }
}

void Syscall_Logger::stop_observing(){

    observing = false;
}

void Syscall_Logger::stop_processing(){

    if ( observing )
    {
        observing = false;

        processing_thread = thread ( &Syscall_Logger::process_remaining_queue, this );

        processing_thread.join();
    }
}

void Syscall_Logger::add_stream( Data_Stream * stream ){

    streams.insert( stream );
}

void Syscall_Logger::remove_stream( Data_Stream * stream ){

    streams.erase( stream );
}

void Syscall_Logger::send_data( Data_Record record ){

    for ( auto stream_it = streams.begin(); stream_it != streams.end(); ++stream_it ){

        (*stream_it)->process_data( record );
    }
}

void Syscall_Logger::process(){

    while ( processing )
    {
        Sensor_Data data_point;

        // try_dequeue attempts to remove the next
        // item on the queue and assigns it to the
        // reference given as an argument (in this
        // case, data_point).
        //
        // Note that this is similar to
        // the notify_observers method in
        // Syscall_Sensor.cpp.

        if ( data_queue.try_dequeue( data_point ) )
        {
            Syscall_Record syscall_record( data_point );

            send_data( syscall_record );
        }
    }
}

void Syscall_Logger::process_remaining_queue(){

    // NOTE: As with Syscall_Sensor, this behavior
    // may not be desirable.  This continues to send
    // data to data_streams until it's empty.
    // This will happen if there are still Sensor_Data
    // objects on the queue when processing ends.
    // This is a somewhat arbitrary decision,
    // and in the future, we may wish to disable this.

    Sensor_Data data_point;

    while ( data_queue.try_dequeue( data_point ) )
    {
        Syscall_Record syscall_record( data_point );

        send_data( syscall_record );
    }
}
