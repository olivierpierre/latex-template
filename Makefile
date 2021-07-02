TARGET=report
PDFREADER=evince

dvi: all

all:
	#pdflatex --draftmode $(TARGET)
	#bibtex $(TARGET)
	pdflatex --draftmode $(TARGET)
	pdflatex $(TARGET)

show: all
	$(PDFREADER) $(TARGET).pdf

spellcheck:
	aspell -t -c $(TARGET).tex

clean:
	rm -rf *.aux *.toc *.bbl *.blg *.out *.log
