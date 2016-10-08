# Read in Advertising.csv
Advertising <- read.csv("../../data/Advertising.csv")
Advertising = Advertising[,-1]

# compute linear regression of TV, Radio, and Newspaper Ad Budget on sales
regression <- lm(Sales ~ ., data= Advertising)
summary_regression <- summary(regression)

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

save(regression, summary_regression, file = "../../data/regression.RData")