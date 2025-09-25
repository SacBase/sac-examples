#!/bin/bash

./bin/flash
./bin/flash_p
./bin/flash_mt -mt 4

./bin/fmg
#./bin/fmg_p
./bin/fmg_mt -mt 4

./bin/mandelbrot
./bin/mandelbrot_p
./bin/mandelbrot_mt -mt 4

./bin/matmul
./bin/matmul_p
./bin/matmul_mt -mt 4

./bin/nbody
#./bin/nbody_p
./bin/nbody_mt -mt 4

./bin/quickhull
./bin/quickhull_p
./bin/quickhull_mt -mt 4

./bin/stencil
./bin/stencil_p
./bin/stencil_mt -mt 4
