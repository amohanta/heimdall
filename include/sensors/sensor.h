#pragma once

#include <cstdint>
#include <unordered_set>
#include <thread>

#include "sensor_data/sensor_data.h"
#include "sensor_observers/sensor_observer.h"
#include "queues/readerwriterqueue.h"

typedef moodycamel::ReaderWriterQueue<Sensor_Data> queue;

using std::thread;

// Sensor constants

const uint_fast8_t SENSING_OFF = 0x00;
const uint_fast32_t SENSOR_QUEUE_SIZE = 100; // CHECK: This is entirely arbitrary right now. If something works better, it will be changed.

class Sensor {

    public:

        // As of 5/26/2016, this compiles and *should* work.
        // The sensor abstract class merely
        // initializes a queue. All sensors
        // should have a queue like this.

        Sensor() : data_queue ( SENSOR_QUEUE_SIZE ) {}
        virtual ~Sensor(); // CHECK: I had this as pure virtual, but I'm not sure why.  I removed "=0" from it.

       
        // These methods will vary from sensor to sensor.
        // As such, they are pure virtual and derived classes
        // must provide a specific implementation.
        
        virtual bool is_sensing()=0;

        virtual uint_fast8_t set_sensing( bool on )=0;
        virtual uint_fast8_t sensing_status()=0;
        virtual uint_fast8_t toggle_sensing()=0;
        virtual uint_fast8_t start_sensing()=0;
        virtual uint_fast8_t stop_sensing()=0;

        // These methods should be the same for all sensors.

        void attach_observer( Sensor_Observer * observer );
        void detatch_observer( Sensor_Observer * observer );
        uint_fast32_t observer_count();

    protected:

        // All sensors will have these data members
        // in common.

        thread sense_thread;
        thread notify_thread;

        std::unordered_set<Sensor_Observer *> observers;

        queue data_queue;

        uint_fast8_t status;

        // These methods will vary from sensor to sensor.
        // Thus, they are pure virtual and must be
        // defined in all derived classes.

        virtual Sensor_Data * sense_data()=0;
        virtual void sense()=0;
        virtual void notify_observers()=0; 
};

Sensor::~Sensor() {}

void Sensor::attach_observer( Sensor_Observer * observer ){

    observers.insert( observer );
}


void Sensor::detatch_observer( Sensor_Observer * observer ){

    observers.erase( observer );
}

uint_fast32_t Sensor::observer_count(){

    observers.size();
}

