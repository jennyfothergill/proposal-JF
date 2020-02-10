open: paper.pdf
	open paper.pdf

paper.pdf: paper.aux paper.bbl 
	pdflatex paper.tex
	pdflatex paper.tex

paper.aux: paper.tex
	pdflatex paper.tex
	pdflatex paper.tex
	bibtex paper

paper.bbl: library.bib
	bibtex paper 

library.bib: 
	echo "\n\n\n\tERRORS BELOW? Don't forget to link to your Mendeley Library: \n\n \t\tln -s ~/Path/To/Mendeley/cmelab.bib library.bib\n\n"

clean:
	rm paper.{aux,bbl,blg,log,out,pdf} acs-paper.bib
