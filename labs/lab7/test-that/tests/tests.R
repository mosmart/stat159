x <- c(1, 2, 3, 4, 5)
y <- c(1, 2, 3, 4, NA)
z <- c(TRUE, FALSE, TRUE)
w <- letters[1:5]
f <- c(rep(NA, 10000))

# load the source code of the functions to be tested
source("../functions/range-value.R")

# context with one test that groups expectations
context("Test for range value") 

test_that("range works as expected for x", {
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})

test_that("range works as expected for y", {
  expect_length(range_value(y, FALSE), 1)
  expect_identical(range_value(y, FALSE), NA_real_)
  expect_type(range_value(y, TRUE), 'double')
  expect_equal(range_value(y, TRUE), 3)
})

test_that("range works as expected for z", {
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
  expect_identical(range_value(z), 1L)
})

test_that("range works as expected for w", {
  expect_that(range_value(w), throws_error())
})


# load the source code of the functions to be tested
source("../functions/missing-values.R")

# context with one test that groups expectations
context("Test for missing values")

test_that("missing works as expected for y", {
    expect_length(missing_values(y), 1)
    expect_type(missing_values(y), 'double')
    expect_gte(missing_values(y), 0)
})
