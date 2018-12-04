VIEWER=evince
NAME=gyro_technical_manual

all:
	pdflatex main ; bibtex main ; pdflatex main ; pdflatex main
	mv main.pdf $(NAME).pdf
	$(VIEWER) $(NAME).pdf

clean:
	rm -f *dvi *idx *log *toc *bbl *aux *blg *out
