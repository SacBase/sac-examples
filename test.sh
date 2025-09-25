#!/bin/bash

./bin/flash || exit 1
./bin/flash_p || exit 1
./bin/flash_mt -mt 4 || exit 1

./bin/fmg 2048 || exit 1
#./bin/fmg_p 2048 || exit 1
./bin/fmg_mt -mt 4 2048 || exit 1

./bin/mandelbrot || exit 1
./bin/mandelbrot_p || exit 1
./bin/mandelbrot_mt -mt 4 || exit 1

./bin/matmul || exit 1
./bin/matmul_p || exit 1
./bin/matmul_mt -mt 4 || exit 1

./bin/nbody || exit 1
#./bin/nbody_p || exit 1
./bin/nbody_mt -mt 4 || exit 1

./bin/quickhull || exit 1
./bin/quickhull_p || exit 1
./bin/quickhull_mt -mt 4 || exit 1

./bin/stencil || exit 1
./bin/stencil_p || exit 1
./bin/stencil_mt -mt 4 || exit 1
