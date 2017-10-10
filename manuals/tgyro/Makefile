all:	
	pdflatex main ; bibtex main ; pdflatex main ; pdflatex main
	evince main.pdf

clean:
	rm -rf main.pdf *dvi *idx *log *toc *bbl *aux *blg *out *~
