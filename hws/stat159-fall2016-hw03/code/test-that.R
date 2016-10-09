library(testthat)

# Create a test lm() object for testing
y = c(rep(4, 3), rep(2, 4), rep(7, 3))
x = c(1:10)
df = data.frame(x, y)
fit = lm(y ~ x, data=df)

# Get functions to test
source("./functions/regression-functions.R")

# test file
test_file("./tests/test-regression.R")



