# Top-level Makefile: delegates to src/Makefile

.PHONY: all clean

all:
	$(MAKE) -C src
