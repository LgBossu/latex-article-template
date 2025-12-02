# Edit variables according to your needs. TEX must match your latex compiler.
TEX=latexmk -pdf -interaction=nonstopmode -halt-on-error
SRC=main.tex
OUTDIR=.output
BUILDDIR=.build

all:
	(cd src && \
	mkdir -p $(BUILDDIR) $(OUTDIR) && \
	$(TEX) -output-directory=$(OUTDIR) -aux-directory=$(BUILDDIR) $(SRC) && \
	mv $(OUTDIR)/main.pdf ../main.pdf)
