SHELL:=/bin/bash
include .env

.PHONY: all images

all: images

images:
	$(MERMAIDJS) -i docs/images/conceptual.mmd
