library(testthat)

# Get functions to test
source("../functions/regression-functions.R")

# Create a test lm() object for testing
y = c(rep(4, 3), rep(2, 4), rep(7, 3))
x = c(1:10)
df = data.frame(x, y)
fit = lm(y ~ x, data=df)

# Begin Testing
context("Residual Standard Error (RSE)")

test_that("RSE is positive", {
    expect_true(residual_std_error(fit) > 0)
    expect_false(residual_std_error(fit) < 0)
})

test_that("RSE is same as lm() returned RSE", {
    expect_equal(residual_std_error(fit) , summary(fit)$sigma)
})

test_that("function only takes object lm()", {
    expect_error(residual_std_error(5) , "object is not of class lm")
    expect_error(residual_std_error('a') , "object is not of class lm")
    expect_error(residual_std_error(c(1:5)) , "object is not of class lm")
    expect_error(residual_std_error(c(rep('a', 5)) , "object is not of class lm")
})

context("Residual Sum of Squares (RSS)")

test_that("RSS is positive", {
    expect_true(residual_sum_squares(fit) > 0)
    expect_false(residual_sum_squares(fit) < 0)
})

test_that("RSS < TSS", {
    expect_true(total_sum_squares(fit) > residual_sum_squares(fit))
    expect_false(total_sum_squares(fit) < residual_sum_squares(fit))
})

test_that("function only takes object lm()", {
    expect_error(residual_sum_squares(5) , "object is not of class lm")
    expect_error(residual_sum_squares('a') , "object is not of class lm")
    expect_error(residual_sum_squares(c(1:5)) , "object is not of class lm")
    expect_error(residual_sum_squares(c(rep('a', 5)) , "object is not of class lm")
})

context("Total Sum of Squares (TSS)")

test_that("TSS is positive", {
    expect_true(total_sum_squares(fit) > 0)
    expect_false(total_sum_squares(fit) < 0)
})

test_that("TSS > RSS", {
    expect_true(total_sum_squares(fit) > residual_sum_squares(fit))
    expect_false(total_sum_squares(fit) < residual_sum_squares(fit))
})

test_that("function only takes object lm()", {
    expect_error(total_sum_squares(5) , "object is not of class lm")
    expect_error(total_sum_squares('a') , "object is not of class lm")
    expect_error(total_sum_squares(c(1:5)) , "object is not of class lm")
    expect_error(total_sum_squares(c(rep('a', 5)) , "object is not of class lm")
})

context("R Squared (R^2)")

test_that("R^2 is positive", {
    expect_true(r_squared(fit) > 0)
    expect_false(r_squared(fit) < 0)
})

test_that("0 < R^2 < 1", {
    expect_true(r_squared(fit) > 0)
    expect_true(r_squared(fit) < 1)
    expect_false(r_squared(fit) < 0)
    expect_false(r_squared(fit) > 1)
})

test_that("R^2 is same as lm() returned R^2", {
    expect_equal(r_squared(fit) , summary(fit)$r.squared)
})

test_that("function only takes object lm()", {
    expect_error(r_squared(5) , "object is not of class lm")
    expect_error(r_squared('a') , "object is not of class lm")
    expect_error(r_squared(c(1:5)) , "object is not of class lm")
    expect_error(r_squared(c(rep('a', 5)) , "object is not of class lm")
})

context("F Statistic (F-statistic)")

test_that("F-statistic is positive", {
    expect_true(f_statistic(fit) > 0)
    expect_false(f_statistic(fit) < 0)
})

test_that("F-statistic is same as lm() returned F-statistic", {
    expect_equal(f_statistic(fit) , summary(fit)$fstatistic)
})

test_that("function only takes object lm()", {
    expect_error(f_statistic(5) , "object is not of class lm")
    expect_error(f_statistic('a') , "object is not of class lm")
    expect_error(f_statistic(c(1:5)) , "object is not of class lm")
    expect_error(f_statistic(c(rep('a', 5)) , "object is not of class lm")
})
