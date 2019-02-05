paper.pdf: paper.tex paper.bbl 
	pdflatex paper.tex
	pdflatex paper.tex
	open paper.pdf

paper.aux: paper.tex
	pdflatex paper.tex
	pdflatex paper.tex

paper.bbl: paper.aux library.bib
	bibtex paper 

library.bib: 
	echo "\n\n\n\tERRORS BELOW? Don't forget to link to your Mendeley Library: \n\n \t\tln -s ~/Path/To/Mendeley/cmelab.bib library.bib\n\n"

clean:
	rm paper.{aux,bbl,blg,log,out,pdf} acs-paper.bib
