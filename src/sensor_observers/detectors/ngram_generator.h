/*
 *  File Name : ngram_generator.h
 *  
 *  Creation Date : 11-01-2017
 *
 *  Last Modified : Wed 11 Jan 2017 02:24:29 PM EST
 *
 *  Created By : ronin-zero (浪人ー無)
 *
 */

#pragma once

#include <cstdint>
#include <cmath>

#include "data_point_generator.h"

class NGram_Generator : public Data_Point_Generator{

    public:

        NGram_Generator( uint_fast32_t n_value, uint_fast32_t table_size );
        ~NGram_Generator() {}

        int_fast64_t generate_data_point( Trace_Window * trace );

        uint_fast32_t ngram_size();

        bool has_next( Trace_Window * trace );
        bool done( Trace_Window * trace );

    private:

        size_t _index;
        uint_fast32_t _n;
        uint_fast32_t _table_size;

};