SAC ?= sac2c
FLAGS = -maxwlur 9 -maxwlmp 1

.PHONY: all seq check mt clean

all: seq check mt

seq: \
	bin/flash_seq \
	bin/fmg_seq \
	bin/mandelbrot_seq \
	bin/matmul_seq \
	bin/nbody_seq \
	bin/quickhull_seq \
	bin/stencil_seq

check: bin/flash_check \
	bin/fmg_check \
	bin/mandelbrot_check \
	bin/matmul_check \
	bin/quickhull_check \
	bin/stencil_check

mt: bin/flash_mt \
	bin/fmg_mt \
	bin/mandelbrot_mt \
	bin/matmul_mt \
	bin/nbody_mt \
	bin/quickhull_mt \
	bin/stencil_mt

bin/%_seq: src/%.sac
	$(SAC) $(FLAGS) $< -o $@

bin/%_check: src/%.sac
	$(SAC) $(FLAGS) -check p $< -o $@

bin/%_mt: src/%.sac
	$(SAC) $(FLAGS) -t mt_pth $< -o $@

clean:
	$(RM) bin/*
