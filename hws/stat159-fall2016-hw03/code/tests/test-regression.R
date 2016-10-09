# Tests for residual_std_error()
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
    expect_that(fit, is_a("lm"))
})

# Tests for residual_sum_squares()
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
    expect_that(fit, is_a("lm"))
})

# Tests for total_sum_squares()
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
    expect_that(fit, is_a("lm"))
})

# Tests for r_squared()
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
    expect_that(fit, is_a("lm"))
})

# Tests for f_statistic()
context("F Statistic (F-statistic)")

test_that("F-statistic is positive", {
    expect_true(f_statistic(fit) > 0)
    expect_false(f_statistic(fit) < 0)
})

test_that("function only takes object lm()", {
    expect_that(residual_std_error(5) , throws_error())
    expect_that(fit, is_a("lm"))
})
