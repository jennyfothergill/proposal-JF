0master.pdf: 0master.tex 1summ.tex 2pd.tex 3ref.tex
	pdflatex 0master.tex
	pdflatex 0master.tex
	bibtex 0master
	pdflatex 0master.tex
	pdflatex 0master.tex

one: 
	pdflatex 0master.tex

clean: 
	rm -f *.aux
	rm -f *.out
	rm -f *.bbl
	rm -f *.blg
	rm -f *.log
	rm -f 0master.pdf
