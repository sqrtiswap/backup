.DEFAULT_GOAL := all

all: install

install:
	mkdir -p ~/bin/
	cp -f backup ~/bin/backup

uninstall:
	rm -f ~/bin/backup

.PHONY: all install uninstall
