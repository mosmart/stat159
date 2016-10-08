# Read in Advertising.csv
Advertising <- read.csv("../../data/Advertising.csv")
Advertising = Advertising[,-1]

# compute linear regression of TV, Radio, and Newspaper Ad Budget on sales
regression <- lm(Sales ~ ., data= Advertising)
summary_regression <- summary(regression)

# compute linear regression of TV Ad Budget on sales
regression1 <- lm(Sales ~ TV, data= Advertising)
summary_regression1 <- summary(regression1)

# compute linear regression of Radio Ad Budget on sales
regression2 <- lm(Sales ~ Radio, data= Advertising)
summary_regression2 <- summary(regression2)

# compute linear regression of Newspaper Ad Budget on sales
regression3 <- lm(Sales ~ Newspaper, data= Advertising)
summary_regression3 <- summary(regression3)

## Residual Plot to PNG
png("../../images/residual-plot.png")
plot(regression, which=1)
dev.off()
## Scale Location to PNG
png("../../images/scale-location-plot.png")
plot(regression, which=3)
dev.off()
## Normal QQ to PNG
png("../../images/normal-qq-plot.png")
plot(regression, which=2)
dev.off()

save(regression,summary_regression,regression1,summary_regression1,regression2,summary_regression2,regression3,summary_regression3,file = "../../data/regression.RData")
