# Unit5 ANOVA
#Exercise about price and resources
data_resources <- read.csv2("statistics/Unit5_Resources.csv", header = TRUE)
Resource <- data_resources$Resource
Price <- data_resources$Price

#Treat Resource as a facotor
Resource_factor <- as.factor(Resource)
#get the avona table
anova_resources <- aov(lm(Price~Resource_factor))
summary(anova_resources)
# p-value<alpha, reject Ho, 
#factor "Resource" is significant, it makes difference of "Market Price"

#Which levels of the factors have different means?
#The TukeyHSD intervals gives CI for the differences 
#of means of different levels of factor
require(graphics)
plot(TukeyHSD(anova_resources, "Resource_factor",ordered=TRUE))
#Zero are in 1-2,1-3 so levels 1,2,3 have same means
#level 4 is different from 1,2,3


# Exemple p12 about CO2
data_co2 <- read.csv2("statistics/Unit5_CO2.csv", header = TRUE)
Machine <-data_co2$Machine
CO2 <- data_co2$CO2
Machine_Factor <-as.factor(Machine)
anova_Machine <- aov(lm(CO2~Machine_Factor))
summary(anova_Machine)
require(graphics)
plot(TukeyHSD(anova_Machine, "Machine_Factor",ordered=TRUE))


#Exercise about computers p16
data_computers <- read.csv2("statistics/Unit5_Computers.csv", header = TRUE)
CARD <-data_computers$CARD
SPEED <- data_computers$SPEED
Performance <- data_computers$Performance
CARD_Factor <- as.factor(CARD)
SPEED_Factor <- as.factor(SPEED)
anova_two_factors <- aov(lm(Performance~CARD_Factor*SPEED_Factor))
summary(anova_two_factors)
#The two factors and the interaction are significant
#Noe let's show the means plot
#Table of means
aggregate(Performance~CARD_Factor+SPEED_Factor, FUN="mean")
#Interacion plot: performance as a function of speedm for each value of CARD
interaction.plot(SPEED_Factor,CARD_Factor,Performance,
                 xlab = "SPEED_Factor",
                 ylab="Performance",
                 trace.label = "CARD_Factor",
                 main ="Interaction plot",
                 col =c("blue","red","green"),bg=c("blue","red","green"),
                 pch=c(18,22,24),type="b"
                 )

help("interaction.plot")


#Exemple about Electronic System p17
data_resistance <- read.csv2("statistics/Unit5_Resistance.csv", header = TRUE)
A <-data_resistance$A
B <- data_resistance$B
Resistance <- data_resistance$Resistance
A_Factor <- as.factor(A)
B_Factor<- as.factor(B)
anova_two_factors <- aov(lm(Resistance~A_Factor*B_Factor))
summary(anova_two_factors)
#Table of means
aggregate(Resistance~A_Factor+B_Factor, FUN="mean")
#Interacion plot: performance as a function of speedm for each value of CARD
interaction.plot(A_Factor,B_Factor,Resistance,
                 xlab = "A_Factor",
                 ylab="Resistance",
                 trace.label = "B_Factor",
                 main ="Interaction plot",
                 col =c("blue","red","green"),bg=c("blue","red","green"),
                 pch=c(18,22,24),type="b"
)


#labsession
data_Shops <- read.csv2("statistics/Data_Shops.csv", header = TRUE)
Size <- data_Shops$Size
Location <- data_Shops$Location
Profits <- data_Shops$Profits
Size_Factor <- as.factor(Size)
Location_Factor <- as.factor(Location)
anova_two_factors <- aov(lm(Profits~Size_Factor*Location_Factor))
summary(anova_two_factors)
#Table of means
aggregate(Profits~Size_Factor+Location_Factor, FUN="mean")
#Interacion plot: performance as a function of speedm for each value of CARD
interaction.plot(Size_Factor,Location_Factor,Profits,
                 xlab = "Size_Factor",
                 ylab="Profits",
                 trace.label = "Location_Factor",
                 main ="Interaction plot",
                 col =c("blue","red","green"),bg=c("blue","red","green"),
                 pch=c(18,22,24),type="b"
)





