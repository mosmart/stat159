all: paper.html

paper.md: sections/.
	cat sections/*.md > paper.md

paper.html: paper.md
	pandoc paper.md -f markdown -t html -o paper.html
