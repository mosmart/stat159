# Goal
Replicate the analysis by Gareth James, Daniela Witten, Trevor Hastie and Robert Tibshirani in Section 3.1 of Chapter 3. *Linear Regression* in "An Introduction to Statistical Learning."

# The Process
1. The file structure was set up using the following code:

        mkdir stat159-fall2016-hw02    
        cd stat159-fall2016-hw02/  
        touch .gitignore README.md Makefile    
        mkdir data code images report    
        touch data/README.md code/README.md code/eda-script.R code/regression-script.R report/report.Rmd
2. The paper's analysis are  generated from the files in the `/code` which use the data files in `/data`. Each of these directories has their own README.md detailing their respective content. 
3. The file `report.Rmd` contains the text content of the paper and takes in the output of the `/code` files, which include tables, histograms, and simple linear regression summary statistics.
4. The Makefile automates the entire process, first downloading the Advertising dataset, then running the files in `/code` which generate the files in `/data` and `/images`, and then running `report.Rmd` which outputs the final paper as a PDF. 

# Replicating this analysis
To replicate this analysis, clone this gitHub folder `stat159-fall2016-hw02`, navigate to the parent directory and run the command `make all`. 

**NOTE:** You need to have the required R packages installed as well as LaTex in order for the command `make all` to run without producing any errors. The required R packages are `stargazer` and `ggplot2`. 
	
