SAC ?= sac2c
FLAGS = -maxwlur 9 -maxwlmp 1

.PHONY: all seq check mt clean

all: seq check mt

seq:                  \
	bin/fft			  \
	bin/flash         \
	bin/fmg           \
	bin/mandelbrot    \
	bin/matmul        \
	bin/nbody         \
	bin/quickhull     \
	bin/stencil

check:                \
	bin/fft_p    	  \
	bin/flash_p       \
	bin/fmg_p         \
	bin/mandelbrot_p  \
	bin/matmul_p      \
	bin/quickhull_p   \
	bin/stencil_p

mt:                   \
	bin/fft_mt		  \
	bin/flash_mt      \
	bin/fmg_mt        \
	bin/mandelbrot_mt \
	bin/matmul_mt     \
	bin/nbody_mt      \
	bin/quickhull_mt  \
	bin/stencil_mt

bin/%: src/%.sac
	$(SAC) $(FLAGS) $< -o $@

bin/%_p: src/%.sac
	$(SAC) $(FLAGS) -check p $< -o $@

bin/%_mt: src/%.sac
	$(SAC) $(FLAGS) -t mt_pth $< -o $@

clean:
	$(RM) bin/*
