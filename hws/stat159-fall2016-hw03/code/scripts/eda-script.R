# Read in Advertising.csv
Advertising <- read.csv("../../data/Advertising.csv")
Advertising <- Advertising[,-1]

sink("../../data/eda-output.txt")
# Create summary statistics table for TV and Sales
stargazer(Advertising, type= 'text')
# Correlated features?
correlationMatrix <- cor(Advertising)
# summarize the correlation matrix
print(correlationMatrix)
sink()

# Save Correlation Matrix
save(correlationMatrix, file = "../../data/correlation-matrix.RData")

# Create Pairwise Scatterplots and save as a PNG
png("../../images/scatterplot-matrix.png")
pairs(Advertising, gap = 0)
dev.off()

# Create histograms for TV, Sales, Radio, and Newspaper and save as PNGs
### sales
png("../../images/histogram-sales.png")
hist(Advertising$Sales, xlab='Sales (in thousands)', main='Sales')
dev.off()
### tv
png("../../images/histogram-tv.png")
hist(Advertising$TV, xlab='Budget (in thousands)', main='TV Advertising Budget (in thousands)')
dev.off()
### radio
png("../../images/histogram-radio.png")
hist(Advertising$Radio, xlab='Sales (in Thousands)', main='Radio Advertising Budget (in thousands)')
dev.off()
### newspaper
png("../../images/histogram-newspaper.png")
hist(Advertising$Newspaper, xlab='Budget (in thousands)', main='Newspaper Advertising Budget')
dev.off()
