SHELL = /usr/bin/env zsh

.PHONY: test run

test:
	docker build -t dotfiles .
	docker run --rm -it dotfiles bash

run:
	sh setup.sh
