QUARTO_BRANCH ?= $(shell git rev-parse --abbrev-ref HEAD)
QUARTO_OUTPUT ?= _output/$(QUARTO_BRANCH)
OUT ?= $(QUARTO_OUTPUT)

MD := $(shell git ls-files | grep '\.md$$')
QMD := $(shell git ls-files | grep '\.qmd$$')

DOT := $(shell git ls-files | grep '\.dot$$')
DOT_SVG := $(patsubst %.dot,%.dot.svg,$(DOT))


all: render
pdf: render-pdf

render: dot
	quarto render --output-dir=$(OUT)

render-pdf: dot
	quarto render --output-dir=$(OUT) --profile pdf

preview:
	quarto preview --profile preview

preview-pdf:
	quarto preview --profile preview,pdf

dot: $(DOT_SVG)

%.dot.svg: %.dot
	neato -Tsvg $< > $@

clean-output:
	cd $(OUT); rm -f $(MD) $(QMD)

clean-dot:
	rm -f $(DOT_SVG)

clean: clean-dot
