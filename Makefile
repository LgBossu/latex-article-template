# Edit variables according to your needs. TEX must match your latex compiler.
TEX=pdflatex
SRC=main.tex
OUTDIR=output
BUILDDIR=build

all:
    mkdir -p $(OUTDIR) $(BUILDDIR)
    $(TEX) -output-directory=$(OUTDIR) -aux-directory=$(BUILDDIR) $(SRC)