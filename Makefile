POSTER_DIR=poster
POSTER=${POSTER_DIR}/poster

.PHONY: all pdf help

help:
	@echo "Commands:"
	@echo ""
	@echo "  pdf       generate PDF version of the poster"
	@echo ""

all: pdf

pdf: ${POSTER}.pdf

${POSTER}.pdf: ${POSTER}.svg
	cat $< | inkscape --pipe --export-filename=$@
