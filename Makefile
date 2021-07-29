SHELL := /bin/bash

.PHONY: build-all
build-all:
	@$(CURDIR)/build-all.sh

.PHONY: push-all
push-all:
	@$(CURDIR)/build-all.sh --push
