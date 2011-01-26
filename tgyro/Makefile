all:	
	latex main ; bibtex main ; latex main ; latex main
	dvips -t letter -Ppdf main ; ps2pdf main.ps main.pdf 
	rm main.ps
	acroread main.pdf

clean:
	rm -rf main.pdf *dvi *idx *log *toc *bbl *aux *blg *out *~
