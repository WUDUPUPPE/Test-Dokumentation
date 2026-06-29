TEX = test.tex
PDF = test.pdf
LATEXMK = latexmk

.PHONY: all clean distclean open

all: $(PDF)

$(PDF): $(wildcard *.tex)
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(TEX)

clean:
	$(LATEXMK) -c

distclean: clean
	$(LATEXMK) -C

open: $(PDF)
	open $(PDF)