#Unit1. Excercise about students heights
#Load the data in Unit1_Heights.csv
data <- read.csv("statistics/Unit1_Heights.csv",header = T)
data
#Another way of creating variables is by indicatinf the column:
Heights <- data[,1]
Heights
#Or directly writing the data

#now comptue the mean
mean(Heights)
#1.71
#and the meduan
median(Heights)
#1.69
#and the quartiles
quantile(Heights)
#1.65,1.74

#or a specific percentiile
quantile(Heights,0.25)

#and a histogram(with some of the many options variable)
#hist(Heights,breaks = c(1.6,1.7,1.8,1.9), col = "blue", main="My first histogram of R", 
     #xlab = "Height",ylab = "Frequency")

hist(Heights,col="blue",main="My first histogram of R",xlab="Height", ylab="Frequency")

#now compute the range
range_Heights <- max(Heights)-min(Heights)
range_Heights
#The range function gives you the maximum and the minimun values
range(Heights)

#Interquartile range
IQR(Heights)
quantile(Heights)

#standard deviation/variance
sd(Heights)
var(Heights)

#coefficient of variation.
CV <- function(mean, sd){
  (sd/mean)/100
}
CV(mean=mean(Heights), sd=sd(Heights))
CV(3,2)

#Skewness coefficient and kurtosis, but we need to install pakecage moments firstly
install.packages("moments")
library(moments)
skewness(Heights)
kurtosis(Heights)
