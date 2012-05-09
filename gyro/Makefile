VIEWER=evince
NAME=gyro_technical_manual

all:	
	latex main ; bibtex main ; latex main ; latex main
#	dvips -Pdownload35 -t letter -o main.ps main.dvi
#	ps2pdf main.ps
	dvipdf main.dvi
	mv main.pdf $(NAME).pdf
#	rm main.ps
	$(VIEWER) $(NAME).pdf
	
clean:
	rm -f *dvi *idx *log *toc *bbl *aux *blg *out
