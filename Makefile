# Top-level Makefile: delegates to src/Makefile

.PHONY: all clean
all:
	$(MAKE) -C src

clean:
	$(MAKE) -C src clean