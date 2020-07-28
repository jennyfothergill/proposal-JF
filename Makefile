proposal.pdf: 
	pdflatex 0master.tex
	pdflatex 0master.tex
	bibtex 0master
	pdflatex 0master.tex
	pdflatex 0master.tex

clean: 
	rm *.aux
	rm *.bbl
	rm *.blg
	rm *.log
	rm 0master.pdf
