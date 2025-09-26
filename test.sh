#!/bin/bash

./bin/flash 2048 128
./bin/flash_p 1024 64
./bin/flash_mt -mt 4 2048 128

./bin/fmg 2048
#./bin/fmg_p 1024
./bin/fmg_mt -mt 4 2048

./bin/mandelbrot 1920 1080
./bin/mandelbrot_p 1280 720
./bin/mandelbrot_mt -mt 4 1920 1080

./bin/matmul 1000
./bin/matmul_p 500
./bin/matmul_mt -mt 4 1000

./bin/nbody 1000 100
#./bin/nbody_p 100 100
./bin/nbody_mt -mt 4 1000 100

./bin/quickhull 1000000
./bin/quickhull_p 100000
./bin/quickhull_mt -mt 4 1000000

./bin/stencil 1000 100
./bin/stencil_p 100 100
./bin/stencil_mt -mt 4 1000 100
