#Unit1 Excercise about PieChart
#one option is to directly write the data
#Simple Pie Chart
sport <- c(9,6,5,7)
lbls <- c("Rugby","Football","Basketball","Others")
pie(sport, labels = lbls, main="Pie Chart of favorite sports")

#Simple bar chart
barplot(sport, names.arg=lbls,main="Bar Chart of favorite sports",
col = c("red","blue","orange","pink"))

#read the file
data <- read.csv2("statistics/Unit1_PieChart.csv", header = T)
#choose the file 
#data <- read.csv(file.choose(),header=T,sep=";")
data

#declare vectors : values pf he variable and frequencies
sport_vector <- data$Favourite_Sport
sport_vector
frequency_vector <-data$Frequency
frequency_vector
#now decipt a pieChart
pie(frequency_vector,labels=sport_vector,main="Pie Chart of favorite sports")
