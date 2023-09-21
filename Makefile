PDF=CV_fr.pdf CV_en.pdf
EXTRA=$(patsubst %.pdf,%.log,$(PDF)) $(patsubst %.pdf,%.out,$(PDF)) $(patsubst %.pdf,%.aux,$(PDF)) 

all: $(PDF)

%.pdf: %.tex
	pdflatex $<

open-%.pdf: %.pdf
	open $<

clean:
	rm -f $(EXTRA)

mrproper: clean
	rm -f $(PDF)

Paul\ Lietar.pdf: CV_en.pdf
	cp "$<" "$@"
