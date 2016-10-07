# Residual Etandard Error (RSE)
residual_std_error <- function(fit) {
    sqrt( sum(residuals(fit)^2) / fit$df.residual )
}

# Residual Sum of Squares (RSS)
residual_sum_squares <- function(fit) {
    sum(residuals(fit)^2)
}

# Total Sum of Squares (TSS)
total_sum_squares <- function(fit) {
    y = residuals(fit)+fitted(fit)
    sum((y-mean(y))^2)
}

# R Squared (R^2)
r_squared <- function(fit) {
    y = residuals(fit)+fitted(fit)
    tss = sum((y-mean(y))^2)
    rss = sum(residuals(fit)^2)
    1 - rss/tss
}

# F Statistic (F-statistic)
f_statistic <- function(fit) {
    y = residuals(fit)+fitted(fit)
    tss = sum((y-mean(y))^2)
    rss = sum(residuals(fit)^2)
    p = length(coef(fit)) - 1
    ((tss-rss)/p)/(rss/(fit$df.residual+1-p))
}
