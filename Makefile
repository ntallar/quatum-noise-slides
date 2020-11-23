all:
	pdflatex presentation.tex
	biber presentation
	pdflatex presentation.tex
	make clean-unused
clean-unused:
	rm -f presentation.aux
	rm -f presentation.bbl
	rm -f presentation.toc
	rm -f presentation.blg
	rm -f presentation.log
	rm -f presentation.out
	rm -f presentation.run.xml
	rm -f presentation.bcf
	rm -f presentation.snm
	rm -f presentation.nav
clean:
	make clean-unused
	rm -f presentation.pdf
