all: Workbook.pdf instructorsGuide.pdf

Workbook.pdf: Workbook.aux
	pdflatex Workbook
Workbook.aux: *.tex */*.tex
	pdflatex Workbook
	pdflatex Workbook
	#makeindex Workbook
	#bibtex Workbook
instructorsGuide.pdf: instructorsGuide.aux
	pdflatex instructorsGuide
instructorsGuide.aux: *.tex */*.tex
	pdflatex instructorsGuide
	pdflatex instructorsGuide
	#makeindex instructorsGuide
	#bibtex instructorsGuide
clean::
	rm *.aux *~ *.bak */*.aux */*~ */*.bak
