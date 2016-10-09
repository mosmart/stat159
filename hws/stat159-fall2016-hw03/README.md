# Goal
Replicate the analysis by Gareth James, Daniela Witten, Trevor Hastie and Robert Tibshirani in Section 3.2 of Chapter 3. *Linear Regression* in "An Introduction to Statistical Learning." Also write functions and test them using the R `testthat` package.

# The Process
1. The file structure was set up using the following code:

        mkdir stat159-fall2016-hw03    
        cd stat159-fall2016-hw03/  
        touch .gitignore README.md Makefile LICENSE    
        mkdir data code images report
        cd code
        mkdir functions scripts tests
        touch functions/regression-functions.R scripts/eda-script.R scripts/regression-script.R scripts/session-info-script.R tests/test-regression
        cd ..
        touch data/README.md code/README.md code/test-that.R report/report.Rmd
2. The paper's analysis are  generated from the files in the `/code` which use the data files in `/data`. Each of these directories has their own README.md detailing their respective content. 
3. The file `report.Rmd` contains the text content of the paper and takes in the output of the `/code` files, which include tables, histograms, and simple linear regression summary statistics.
4. The Makefile automates the entire process, first downloading the Advertising dataset, then running the files in `/code` which generate the files in `/data` and `/images`, and then running `report.Rmd` which outputs the final paper as a PDF. 

# Replicating this analysis
1. Clone this gitHub folder `stat159-fall2016-hw03`
2. Navigate to the parent directory and run the command `make data` to download the dataset `Advertising.csv` used for all testing and analysis
3. In the parent directory still, run the command `make tests` to test that the functions that generate regression summary statistics work (this is NOT in the paper, but was a requirment of the assignment).
4. Still in the parent directory, run the command `make all` to run the regression analysis, output images and `.RData` objects, and knit `report.Rmd` to the final paper PDF output.

**NOTE:** You need to have the required R packages installed as well as LaTex in order for the command `make all` to run without producing any errors. The required R packages are `stargazer` and `testthat`. 

[Creative Commons License](http://creativecommons.org/licenses/by-sa/4.0/) 
![creative commones license](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)



