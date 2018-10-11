#First exerxise about confidence intervals for the mean
income <- c(125,135,145,130,120,145,125,130,150,145)
sd(income)

#This commande computes directly the confidence intreval
#when the sigma is unknown
t.test(income, conf.level = 0.95)

#when the sigma is known
install.packages("TeachingDemos")
library(TeachingDemos)
#z.test(income, sd=10)

prop.test(120,200,conf.level=0.95)

#p8 exemple
difference <-c(2.1,-1.0,1.7,1.6,1.4,2.5,1.3,2.6)
t.test(difference)

#p14 exemples
speed <- c(69,60,80,85,68,74,60,86,92)
mean(speed)
t.test(speed, mu=70) //m =70
t.test(speed, mu=70, alternative = "less")
t.test(speed, mu=70, alternative = "greater")
t.test(speed, mu=70, alternative = "two.sided")

# p16 exemple: propotion of units defective
prop.test(20,200,p=0.05, alternative = "two.sided")

#exemple p17 propotion company in risk of bankruptcy
prop.test(6,200,p=0.02, alternative = "greater")

#p19 exemple of testing hypothesis of 2 means of 2 populations
countryA <- c(200,230,205,185,190,300,250,245,208)
countryB <- c(190,220,200,180,190,260,240,241,200)
var.test(countryA, countryB) 
t.test(countryA, countryB, var.equal = TRUE) 

#p21 exemple test about paired samples.
#have any difference between before and after?
BEFORE<- c(200,230,205,185,190,300,250,245,208)
AFTER <- c(190,220,200,180,190,260,240,241,200)
t.test(BEFORE,AFTER, paired = TRUE, alternative = "two.sided") #Srtong conclusion


