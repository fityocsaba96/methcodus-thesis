directory := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

pdf:
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf -outdir="$(directory)" "$(directory)/thesis.tex"