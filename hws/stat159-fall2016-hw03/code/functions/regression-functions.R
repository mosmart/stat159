# Calculate Residual Standard Error (RSE):
# Takes an lm() object as an input and returns the RSE
residual_std_error <- function(fit) {
    sqrt( sum(residuals(fit)^2) / fit$df.residual )
}

# Calculate Residual Sum of Squares (RSS)
# Takes an lm() object as an input and returns the RSS
residual_sum_squares <- function(fit) {
    sum(residuals(fit)^2)
}

# Calculate Total Sum of Squares (TSS)
# Takes an lm() object as an input and returns the TSS
total_sum_squares <- function(fit) {
    y = residuals(fit)+fitted(fit)
    sum((y-mean(y))^2)
}

# Calculate R Squared (R^2)
# Takes an lm() object as an input and returns the R^2
r_squared <- function(fit) {
    y = residuals(fit)+fitted(fit)
    tss = sum((y-mean(y))^2)
    rss = sum(residuals(fit)^2)
    1 - rss/tss
}

# Calculate F Statistic (F-statistic)
# Takes an lm() object as an input and returns the F-statistic
f_statistic <- function(fit) {
    y = residuals(fit)+fitted(fit)
    tss = sum((y-mean(y))^2)
    rss = sum(residuals(fit)^2)
    p = length(coef(fit)) - 1
    ((tss-rss)/p)/(rss/(fit$df.residual+1-p))
}
