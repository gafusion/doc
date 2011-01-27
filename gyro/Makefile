VIEWER=evince
NAME=gyro_technical_manual

all:	
	latex main ; bibtex main ; latex main ; latex main
	dvipdf main
	mv main.pdf $(NAME).pdf
	$(VIEWER) $(NAME).pdf
	
clean:
	rm *dvi *idx *log *toc *bbl *aux *blg
