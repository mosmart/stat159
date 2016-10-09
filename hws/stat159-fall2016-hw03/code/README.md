# Contents

## functions
1. regression-functions.R  
Contains functions that generate the Residual Standard Error, Residual Sum of Squares, Total Sum of Squares, R Squared, and F-Statistic of the multiple linear regression on TV, Radio, and Newspaper on Sales.

## scripts
1. eda-script.R  
`eda-script.R` reads in the `Advertising.csv` data set and computes summary statistics and histograms of TV, Radio, Newspaper, and Sales, their correlation matrix, and their pairwise scatterplot. The summary statistics table and correlation matrix text outputs are saved to the file `eda-output.txt` in `/data`, the correlation matrix is also saved in bionary for in `correlation-matrix.RData` also in `/data`, and the histograms are saved as PNG files and are stored in the `/images` folder.
2. regression-script.R   
`regression-script.R` reads in the `Advertising.csv` data set and computes simple linear models of each predictor variable on Sale, stored as the objects `regression1`, `regression2`, `regression3`. This script also computes the summary of these simple linear models and stores them as the objects `summary_regression1`, `summary_regression2`, `summary_regression3`. Additionally, the script computes a multiple linear regression of all the predictors on Sales, stores the `lm()` object as `regression` and its summary as `summary_regression`. Finally, this script also produces Normal QQ Plot, Residual Plot, and Scale Location PLot and stores them as PNG files in `/images`. All of the R objects in this script are stored in `regression.RData` in `/data`.
3. session-info-script.R  
`session-info-script.R` includes the library() calls to ALL the packages used in this project, as well as the output of the function sessionInfo(). The output of sessionInfo() has been exported to the file `session-info.txt`.

## tests
1. test-regression.R
`test-regression.R` contains the test to be ran on the functions in `regression-functions.R` to verify that they work. This file (as well as the file `regression-functions.R`) are called by the `test-that.R` file.

## test-that.R
This file computes a dummy lm() object, takes in the files `regression-functions.R` and `test-regression.R`, and then tests the functions in `regression-functions.R` using the tests in `test-regression.R` on the dummy lm() object to verify that the functions for properly.

