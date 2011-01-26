all:	
	latex main ; bibtex main ; latex main ; latex main
	dvipdf main ; acroread main.pdf

clean:
	rm main.pdf *dvi *idx *log *toc *bbl *aux *blg
