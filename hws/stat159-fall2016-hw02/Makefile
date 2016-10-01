.PHONY: all clean data

all: data eda-output.txt regression.RData report.pdf 

report.pdf: ./report/report.Rmd ./data/regression.RData ./images/scatterplot-tv-sales.png ./images/histogram-tv.png ./images/histogram-sales.png
	cd ./report && { Rscript -e "rmarkdown::render('report.Rmd')" ; cd -; }

regression.RData: ./code/regression-script.R ./data/Advertising.csv
	cd ./code && { Rscript -e “regression-script.R” ; cd -; }

eda-output.txt: ./code/eda-script.R ./data/Advertising.csv
	cd ./code && { Rscript -e “.code/eda-script.R” ; cd -; }

data: 
	cd ./data && { curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv ; cd -; }

clean:
	rm ./report/report.pdf
