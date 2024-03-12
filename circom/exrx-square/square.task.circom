pragma circom 2.1.4;

include "circomlib/poseidon.circom";
// include "https://github.com/0xPARC/circom-secp256k1/blob/master/circuits/bigint.circom";

template SquareNTimes (n) {
    signal input base;
    signal output result;

    signal square[n+1];
    square[0] <== base;
    for(var i =1; i < n; i++) {
        // constraint 1
        square[i] <-- square[i-1] * base;
    }
    // constraint 2
    square[n-1] === square[n-2] * base;
    result <== square[n-1];
}

component main { public [ base ] } = SquareNTimes(2);

/* INPUT = {
    "base": "5"
} */