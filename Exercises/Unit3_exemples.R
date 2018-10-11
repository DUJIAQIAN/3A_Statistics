#read the data and declare the variable
#In this file the decimal seperator is '.', so we use read.csv
data_heights <- read.csv("statistics/Unit1_Heights.csv",header= TRUE)
heights <- data_heights[,1]

qqnorm(heights)

shapiro.test(heights)

pnorm(4.9, mean=5, sd=0.1, lower.tail = TRUE)
pnorm(4.8,mean = 5, sd=0.1, lower.tail = FALSE)

pnorm(37,mean=25,sd=7, lower.tail = TRUE)
pnorm(35,mean=30,sd=3, lower.tail = TRUE)

pbinom(5,size=113,prob = 0.08)
