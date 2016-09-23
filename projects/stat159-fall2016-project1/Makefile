.PHONY: all clean

all: paper.html

paper.md: ./paper/sections/. images/.
	cat ./paper/sections/*.md > ./paper/paper.md

paper.html: ./paper/paper.md
	pandoc ./paper/paper.md -f markdown -t html -o ./paper/paper.html

clean:
	rm -f ./paper/paper.html ./paper/paper.md
