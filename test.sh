#!/bin/bash

MT=${MT:-4}

test()
{
    args=$(grep '^SEQ' src/$1.sac | sed -e "s/^SEQ //")
    if [ -n "$args" ]; then
        echo "=== Testing $1 SEQ with input: $args ==="
        ./bin/$1 $args
    else
        echo "=== Skipping $1 SEQ ==="
    fi

    args=$(grep '^CHECK' src/$1.sac | sed -e "s/^CHECK //")
    if [ -n "$args" ]; then
        echo "=== Testing $1 CHECK with input: $args ==="
        ./bin/$1_p $args
    else
        echo "=== Skipping $1 CHECK ==="
    fi

    args=$(grep '^MT' src/$1.sac | sed -e "s/^MT //")
    if [ -n "$args" ]; then
        echo "== Testing $1 MT with input: $args ==="
        ./bin/$1 $args
    else
        echo "=== Skipping $1 MT ==="
    fi
}

test flash
test fmg
test mandelbrot
test matmul
test nbody
test quickhull
test stencil
