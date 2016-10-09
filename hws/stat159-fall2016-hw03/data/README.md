# Contents

## Advertising.csv 
`Advertising.csv` is the main data set used in this analysis: the reproducing of an analysis by Gareth James, Daniela Witten, Trevor Hastie and Robert Tibshirani. The Advertising file is downloaded from http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv using the Makefile in the parent directory. It can be downloaded using the command `make data`.

## eda-output.txt 
`eda-output.txt` is a text file containing the summary statistics of TV, Radio, Newspaper and Sales as well as the correlation matrix of TV, Radio, Newspaper and Sales. The file is produced via `sink()` from the `eda-script.R` file.

## correlation-matrix.RData 
`correlation-matrix.RData` is an R's binary format file containing the correlation matrix object obtained when running `eda-script.R`.

## regression.RData 
`regression.RData` is an R's binary format file containing the regression objects obtained when running `regression-script.R`.

