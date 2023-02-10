# Init vars
MAKEFILE := $(lastword $(MAKEFILE_LIST))
BASENAME := $(shell basename "$(PWD)")
SHELL := /bin/bash

.PHONY: help
all: help
help: Makefile
	@echo
	@echo " Commands:"
	@echo
	@sed -n 's/^##//p' $< | sed -e 's/^/ /' | sort
	@echo

build:
	docker build -f Dockerfile -t $(BASENAME) .

## run-container    Run the container
run:
	docker run --rm -it -p 8080:80 $(BASENAME):latest
