TARGET=report
PDFREADER=evince

dvi: all

all:
	pdflatex $(TARGET)
	pdflatex $(TARGET)

show: all
	$(PDFREADER) $(TARGET).pdf

spellcheck:
	aspell -t -c $(TARGET).tex
