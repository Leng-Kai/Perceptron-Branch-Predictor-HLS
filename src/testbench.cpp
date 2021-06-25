#include <iostream>
#include "ap_int.h"
#include "perceptronBranchPredictor.h"

#define TEST_SIZE 64

using namespace std;

int main() {
    
    ap_uint<32> pc = 65988;
    BTYPE branch[TEST_SIZE] = {0,1,0,0,1,1,1,1,0,1,0,1,0,1,1,0,1,1,1,0,0,0,0,1,1,1,0,0,1,1,1,1,0,0,0,0,0,1,1,1,0,0,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1};
    BTYPE isBranch;
    
    int miss = 0;
    
    for (int i = 0; i < TEST_SIZE; i++) {
//    	cout << "weights: ";
//    	for (int j = 0; j < SIZE; j++) {
//    		cout << perceptron[pc & ENTRY_MASK][j] << " ";
//    	}
//    	cout << perceptron[pc & ENTRY_MASK][SIZE] << endl;
    	cout << "pc: " << pc << endl;
        top(pc, isBranch, branch[i]);
        if (isBranch != branch[i]) miss++;
        cout << "predict: " << isBranch << ", result: " << branch[i] << endl;
        cout << "=======================\n";
    }
    
    cout << "miss: " << miss << " / " << TEST_SIZE << endl;
    cout << "miss rate: " << float(miss) / TEST_SIZE << endl;
    
    return 0;
    
}
