0master.pdf: 0master.tex 1summ.tex 2pd.tex 3ref.tex
	pdflatex 0master.tex
	pdflatex 0master.tex
	bibtex 0master
	pdflatex 0master.tex
	pdflatex 0master.tex
	open 0master.pdf

one: 
	pdflatex 0master.tex
	open 0master.pdf

abs: 
	pdflatex abstract.tex
	open abstract.pdf

clean: 
	rm -f *.aux
	rm -f *.out
	rm -f *.bbl
	rm -f *.blg
	rm -f *.log
	rm -f 0master.pdf
