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
    expect_that(residual_std_error(5) , throws_error())
    expect_that(residual_std_error(fit) is_a("lm")
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
    expect_that(residual_std_error(5) , throws_error())
    expect_that(residual_std_error(fit) is_a("lm")
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
    expect_that(residual_std_error(5) , throws_error())
    expect_that(residual_std_error(fit) is_a("lm")
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
    expect_that(residual_std_error(5) , throws_error())
    expect_that(residual_std_error(fit) is_a("lm")
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
    expect_that(residual_std_error(5) , throws_error())
    expect_that(residual_std_error(fit) is_a("lm")
})
