# Contents

## eda-script.R
`eda-script.R` reads in the `Advertising.csv` data set and computes summary statistics and histograms of TV and Sales. The summary statistics table is saved to the file `eda-output.txt` in `\data` and the histograms are saved as both both PNG and PDF files and are stored in the `\images` folder.

## regression-script.R 
`regression-script.R` reads in the `Advertising.csv` data set and computes simple linear model, stored as the object `regression`. This script also computes the summary of this simple linear model and stores it as the object `summary_regression`. Finally, this script also produces a scatterplot of TV on Sales with the regression line and stores it as both PNG and PDF files in `\images`. All of the R objects in this script are stored in `regression.RData` in `\data`.