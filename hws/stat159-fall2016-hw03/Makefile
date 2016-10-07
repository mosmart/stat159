.PHONY: all report regression eda tests data clean

all: data eda regression report 

report: ./report/report.Rmd ./data/regression.RData ./images/*.png
	cd ./report && { Rscript -e "rmarkdown::render('report.Rmd')" ; cd -; }

regression: ./code/scripts/regression-script.R ./data/Advertising.csv
	cd ./code/scripts && { Rscript regression-script.R ; cd -; }

eda: ./code/scripts/eda-script.R ./data/Advertising.csv
	cd ./code/scripts && { Rscript eda-script.R ; cd -; }

tests: ./code/scripts/. ./data/Advertising.csv
	cd ./code && { Rscript test-that.R ; cd -; }

data: 
	cd ./data && { curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv ; cd -; }

clean:
	rm ./report/report.pdf
