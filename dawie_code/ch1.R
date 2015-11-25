

#This first chapter is about the R environment. Let us do about an hour worth of R today. Feel like doing it.

age <- c(1,3,5,2,11,9,3,9,12,3)
weight <- c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)
mean(weight)  #This is obvious, gives you the mean
sd(weight) #Gives the standard devation
cor(age,weight) #Correlation between age and weight
plot(age,weight) #Allows you to visually inspect the trend

#q() #Ends the session, lets you quit

x <- runif(20) #20 unifrom random variables are created
summary(x) #Gives you a summary of the moments
hist(x) #Provides a histogram

#Exploring the help files (and installing packages)

help.start
install.packages("vcd")
help(package="vcd")
library(vcd)
help(Arthritis)
Arthritis
example(Arthritis)
