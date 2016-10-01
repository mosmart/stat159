# load required packages
## if you don't have the package, run this line first:
## install.packages("ggplot2")
library(ggplot2) 

# Read in Advertising.csv
Advertising <- read.csv("../data/Advertising.csv")

# compute linear regression of tv on sales
regression <- lm(Sales ~ TV, data= Advertising)
summary_regression <- summary(regression)

# create scatterplot of Tv on Sales
scatterplot <- ggplot(data=Advertising, aes(TV, Sales))+geom_point(aes(colour='red'))+stat_smooth(method="lm", se=FALSE)+guides(colour = FALSE)
## save as png
png("../images/scatterplot-tv-sales.png")
scatterplot
dev.off()
## save as pdf
pdf("../images/scatterplot-tv-sales.pdf")
scatterplot
dev.off()

save(summary_regression, scatterplot, file = "../data/regression.RData")