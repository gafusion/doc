all:	
	pdflatex main ; bibtex main ; pdflatex main 
	${VIEWER} main.pdf

clean:
	rm -rf *dvi *idx *log *toc *bbl *aux *blg *out *~ main.pdf
