.PHONY: all clean data

all: report.pdf eda-output.txt regression.RData

report.pdf: report.Rmd regression.RData scatterplot-tv-sales.png
	Rscript knit::./report/report.Rmd

regression.RData: regression-script.R Advertising.csv
	Rscript save(regression-script.Rdata) ./data/regression.RData ./imahes/scatterplot-tv-sales.png ./images/scatterplot-tv-sales.pdf

eda-output.txt: eda-script.R Advertising.csv
	Rscript sink(eda-script.R) .data/eda-output.txt ./images/histogram-tv.png ./images/histogram-tv.pdf ./images/histogram-sales.png ./images/histgram-sales.pdf

data: 
	cd ./data && { curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv ; cd -; }

clean:
	rm report.pdf
