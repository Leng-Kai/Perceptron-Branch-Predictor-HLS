#include "perceptronBranchPredictor.h"

static const ap_int<BITS> PERC_MIN    = 1 << (BITS - 1);
static const ap_int<BITS> PERC_MAX    = ~PERC_MIN;
static const ap_int<BITS> DOUBLE_LR   = LR * 2;
static const ap_int<BITS> PERC_INC_TH = PERC_MAX - DOUBLE_LR + 1;
static const ap_int<BITS> PERC_DEC_TH = PERC_MIN + DOUBLE_LR - 1;

ap_int<BITS> perceptron[ENTRIES][SIZE+1] = {0};
bool bht[SIZE] = {0};       // branch history table
int  dp;                    // dot product
bool pd;                    // prediction
    
void update(ap_uint<32> pc, BTYPE& isBranch) {
    if (pd == isBranch && dp > THRESHOLD) return;
    ap_uint<LOG_ENTRIES> index = pc & ENTRY_MASK;
    if (isBranch) {
        if (perceptron[index][SIZE] < PERC_INC_TH) perceptron[index][SIZE]++;
    } else {
        if (perceptron[index][SIZE] > PERC_DEC_TH) perceptron[index][SIZE]--;
    }

    update:for (int i1 = 0, i2 = 1; i1 < SIZE; i1 += 2, i2 += 2) {
        if (bht[i1] == bht[i2]) {
            if (bht[i1] == isBranch) {
                if (perceptron[index][i2] > PERC_DEC_TH) perceptron[index][i2] -= DOUBLE_LR;
            } else {
                if (perceptron[index][i2] < PERC_INC_TH) perceptron[index][i2] += DOUBLE_LR;
            }
        } else {
            if (bht[i1] == isBranch) {
                if (perceptron[index][i1] > PERC_DEC_TH) perceptron[index][i1] -= DOUBLE_LR;
            } else {
                if (perceptron[index][i1] < PERC_INC_TH) perceptron[index][i1] += DOUBLE_LR;
            }
        }
    }

    shift_reg:for (int i = 0; i < SIZE-1; i++) {
        bht[i] = bht[i+1];
    }
    bht[SIZE-1] = isBranch;
}
    
void process(ap_uint<32> pc, BTYPE& isBranch) {
    ap_uint<LOG_ENTRIES> index = pc & ENTRY_MASK;
//        predict(index);
        
    dp = perceptron[index][SIZE];

    ap_int<BITS> weight[SIZE/2];
    ap_int<2> sign[SIZE/2];
#pragma HLS array_partition variable=perceptron dim=2 complete
#pragma HLS array_partition variable=bht	    dim=1 complete
#pragma HLS array_partition variable=weight     dim=1 complete
#pragma HLS array_partition variable=sign       dim=1 complete

    for (int i = 0; i < SIZE/2; i++) {
#pragma HLS PIPELINE
        weight[i] = (bht[i*2] == bht[i*2+1]) ? perceptron[index][i*2+1] : perceptron[index][i*2];
    }

    for (int i = 0; i < SIZE/2; i++) {
#pragma HLS PIPELINE
        sign[i] = bht[i*2] ? -1 : 1;
    }

    for (int i = 0; i < SIZE/2; i++) {
#pragma HLS UNROLL
        dp += weight[i] * sign[i];
    }
    
    pd = dp >= 0;
    if (!pd) dp = -dp;
    
    isBranch = pd;
}

void top(ap_uint<32> pc, BTYPE& isBranch, BTYPE& result) {
#pragma HLS INTERFACE s_axilite port=pc bundle=bp0
#pragma HLS INTERFACE s_axilite port=isBranch bundle=bp0
#pragma HLS INTERFACE s_axilite port=result bundle=bp0

#pragma HLS inline region recursive
#pragma HLS PIPELINE
    process(pc, isBranch);
    update(pc, result);
}
