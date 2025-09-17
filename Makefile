SAC ?= sac2c
FLAGS = -maxwlur 9 -maxwlmp 1

.PHONY: all clean seq checks mt

all: seq check mt

seq: bin/matmul_seq bin/nbody_seq bin/stencil_seq

check: bin/matmul_check bin/stencil_check

mt: bin/matmul_mt bin/nbody_mt bin/stencil_mt

bin/%_seq: src/%.sac
	$(SAC) $(FLAGS) $< -o $@

bin/%_check: src/%.sac
	$(SAC) $(FLAGS) -check p $< -o $@

bin/%_mt: src/%.sac
	$(SAC) $(FLAGS) -t mt_pth $< -o $@

clean:
	$(RM) bin/*
