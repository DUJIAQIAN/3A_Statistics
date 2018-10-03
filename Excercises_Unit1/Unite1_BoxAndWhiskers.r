
new_vector <-c(12,14,14.5,17,13.5,18.5,16,15.5,15,7,12,16.5)

mean(new_vector)
quantile(new_vector)

boxplot(new_vector,horizontal = TRUE)
abline(v=mean(new_vector), col="blue")
#not symmetric, has one outlier on left