#!/bin/bash

./bin/flash_seq 64 1024 || exit 1
./bin/flash_check 64 1024 || exit 1
./bin/flash_mt -mt 4 64 1024 || exit 1

./bin/fmg_seq 2048 || exit 1
./bin/fmg_check 2048 || exit 1
./bin/fmg_mt -mt 4 2048 || exit 1

./bin/mandelbrot_seq 1280 720 || exit 1
./bin/mandelbrot_check 1280 720 || exit 1
./bin/mandelbrot_mt -mt 4 1280 720 || exit 1

./bin/matmul_seq 1000 || exit 1
./bin/matmul_check 1000 || exit 1
./bin/matmul_mt -mt 4 1000 || exit 1

./bin/nbody_seq 1000 10 || exit 1
#./bin/nbody_check 1000 10 || exit 1
./bin/nbody_mt -mt 4 1000 10 || exit 1

./bin/quickhull_seq || exit 1
./bin/quickhull_check || exit 1
./bin/quickhull_mt -mt 4 || exit 1

./bin/stencil_seq 1000 10 || exit 1
./bin/stencil_check 1000 10 || exit 1
./bin/stencil_mt -mt 4 1000 10 || exit 1
