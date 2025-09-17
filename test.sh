#!/bin/bash

make all || exit 1

./bin/matmul_seq 1000 || exit 1
./bin/matmul_check 1000 || exit 1
./bin/matmul_mt -mt 4 1000 || exit 1

./bin/nbody_seq 1000 10 || exit 1
#./bin/nbody_check 1000 10 || exit 1
./bin/nbody_mt -mt 4 1000 10 || exit 1

./bin/stencil_seq 1000 10 || exit 1
./bin/stencil_check 1000 10 || exit 1
./bin/stencil_mt -mt 4 1000 10 || exit 1
