.PHONY: all clean

all: paper.html

paper.md: sections/. ../images/.
	cat $(wildcard sections/*.md) > paper.md

paper.html: paper.md
	pandoc paper.md -f markdown -t html -o paper.html

clean:
	rm -f paper.html paper.md
