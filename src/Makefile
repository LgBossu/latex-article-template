# Makefile used by Latex Workshop in automatic builds (VSCode handled)
# Run inside ./src

# Edit variables according to your needs. TEX must match your latex compiler.
TEX      := latexmk -silent -pdf -interaction=nonstopmode -halt-on-error
SRC      := main.tex

# Unsafe to change. Stay aware!
OUTDIR   := .output
BUILDDIR := .build

LOG      := $(BUILDDIR)/main.log


# ANSI colors
RED    := \033[31m
YELLOW := \033[33m
GREEN  := \033[32m
BOLD   := \033[1m
RESET  := \033[0m

.PHONY: all clean

all:
	mkdir -p $(BUILDDIR) $(OUTDIR)
	@printf '%b\n' "$(BOLD)⇒ Building $(SRC)…$(RESET)"
	@$(TEX) -output-directory=$(OUTDIR) -aux-directory=$(BUILDDIR) $(SRC) \
	  || { status=$$?; \
	       printf '%b\n' "$(RED)$(BOLD)LaTeX failed (exit $$status): showing last 20 lines$(RESET)"; \
	       if [ -f "$(LOG)" ]; then \
	         printf '%b' "$(YELLOW)"; \
	         tail -n 20 "$(LOG)" | sed '12,19d'; \
	         printf '%b\n' "$(RESET)"; \
	       else \
	         echo "Log file not found: $(LOG)"; \
	       fi; \
	       exit $$status; }
	mv $(OUTDIR)/main.pdf ../main.pdf
	@printf '%b\n' "$(GREEN)$(BOLD)✓ Build succeeded!$(RESET)"

clean:
	@printf '%b\n' "$(BOLD)⇒ Cleaning build files…$(RESET)"
	rm .build/*
	rm .output/*
	@printf '%b\n' "$(GREEN)$(BOLD)✓ Clean succeeded!$(RESET)"