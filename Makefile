# requires pandoc and xelatex

PANDOC_OPTS = -s --pdf-engine=xelatex --filter=graphviz.pl
PDF_SLIDES_OPTS = --slide-level 2 -t beamer --template beamer-vzg.tex

slides.pdf: metadata.yaml slides.md references.md
	pandoc $(PANDOC_OPTS) $(PDF_SLIDES_OPTS) -o $@ $^
