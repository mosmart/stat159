# Read in Advertising.csv
Advertising <- read.csv("../data/Advertising.csv")

# Create summary statistics table for TV and Sales
summary_table <- data.frame(cbind(rbind(length(Advertising$TV), length(Advertising$Sales)),rbind(round(sd(Advertising$TV),2), round(sd(Advertising$Sales),2)),rbind(summary(Advertising$TV)[c(1,6,3,4)],summary(Advertising$Sales)[c(1,6,3,4)])))
names(summary_table) <- c('n', 'SD','Min', 'Max','Median', 'Mean')
row.names(summary_table) <- c('TV Advertising Budget (in thousands)', 'Sales (in thousands)')
sink("../data/eda-output.txt")
summary_table
sink(NULL)

# Create histograms for TV and Sales
## save as pngs
### sales
png("../images/histogram-sales.png")
hist(Advertising$Sales, xlab='Sales (in thousands)', main='Sales')
dev.off()
### tv
png("../images/histogram-tv.png")
hist(Advertising$TV, xlab='Budget (in thousands)', main='TV Advertising Budget (in thousands)')
dev.off()
## save as pdfs
### sales
pdf("../images/histogram-sales.pdf")
hist(Advertising$Sales, xlab='Sales (in Thousands)', main='Sales')
dev.off()
### tv
pdf("../images/histogram-tv.pdf")
hist(Advertising$TV, xlab='Budget (in thousands)', main='TV Advertising Budget')
dev.off()

