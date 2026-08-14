# Used utilities, compiler(s) and flags
PDFTEX          =pdflatex


# Definition of variable with all LaTeX source code (to keep track of changes)
# First file has to be main input point for TeX document!!!
TEXSRC=subtexs/*.tex


# Starting rule - no body (used only as reference)
all: sazba.pdf sazba_FCrules.pdf

sazba: sazba.pdf sazba_FCrules.pdf



sazba.pdf: sazba.tex $(TEXSRC)
	$(PDFTEX) -jobname=$(basename $@) $<

sazba_FCrules.pdf: sazba_FCrules.tex $(TEXSRC)
	$(PDFTEX) -jobname=$(basename $@) $<
