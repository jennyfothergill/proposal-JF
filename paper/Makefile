paper.pdf: paper.tex #library.bib
	pdflatex paper.tex
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex
	open paper.pdf

clean:
	rm paper.{aux,bbl,blg,log,out,pdf} acs-paper.bib
