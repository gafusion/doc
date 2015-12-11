SRC=example

all:
	pdflatex ${SRC}

view:
	make all
	${VIEWER} ${SRC}.pdf

clean:
	rm -f ${SRC}.pdf *nav *snm *aux *log *toc *out
