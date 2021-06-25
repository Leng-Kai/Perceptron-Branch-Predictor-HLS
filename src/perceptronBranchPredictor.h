#ifndef PBPV2
#define PBPV2

#include "ap_int.h"

#define SIZE        4
#define BITS        4
#define ENTRIES     64
#define ENTRY_MASK  ENTRIES - 1
#define LOG_ENTRIES 6
#define THRESHOLD   8
#define LR          1

#define BTYPE		ap_uint<1>

void update(ap_uint<32> pc, BTYPE& isBranch);
    
void process(ap_uint<32> pc, BTYPE& isBranch);

void top(ap_uint<32> pc, BTYPE& isBranch, BTYPE& result);

#endif /* PBPV2 */
