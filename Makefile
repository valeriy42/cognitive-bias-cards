
allcards.tex: generator.py list.xlsx
	python generator.py

allcards.pdf: allcards.tex
	pdflatex $<

all: allcards.pdf 

clean:
	rm *.log *.aux
