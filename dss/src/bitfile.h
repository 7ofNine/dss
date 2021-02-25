#pragma once

#include <stdint.h>


#define BITFILE struct bitfile

BITFILE
{
    uint8_t * buff;
    uint8_t* loc;
    uint8_t * endptr;
    unsigned bit_loc;
    unsigned length;
    int error_code;
};

#define input_nybble( infile)    input_nbits( infile, 4)

int input_bit( BITFILE *infile);
int input_nbits( BITFILE *infile, const int n);
