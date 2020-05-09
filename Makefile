SHELL = /usr/bin/zsh

.PHONY: test run

test:
	docker build -t dotfiles .
	docker run --rm -it dotfiles sh

run:
	sh setup.sh
