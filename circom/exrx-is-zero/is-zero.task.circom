pragma circom 2.1.4;


include "circomlib/poseidon.circom";

template IsZero () {
    signal input in;
    signal output c;

    c <== in;
    in === 0;

    component hash = Poseidon(1);
    hash.inputs[0] <== in;

    log("hash", hash.out);
}

component main { public [ in ] } = IsZero();

/* INPUT = {
    "in": "0"
} */
