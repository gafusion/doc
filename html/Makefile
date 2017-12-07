all:
	cd src ; make html
	rsync -a --exclude-from='exclude.txt' src/_build/html/ ../docs/

clean:
	cd src ; make clean

