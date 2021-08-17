PAPER=main.pdf

all: $(PAPER)

$(PAPER): main.tex references.bib
	pdflatex $<
	pdflatex $<
	bibtex $(basename $<)
	pdflatex $<
	pdflatex $<

clean:
	-rm -rf *.log *.blg *.bbl *.aux *.pdf
