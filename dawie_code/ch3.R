
#Chapter 3: Graphs

attach(mtcars) #Attaches the data frame mtcars
plot(wt, mpg) #Opens a graphics window and generates a scatter plot between these varaibles
abline(lm(mpg~wt)) #Adds a line of best fit
title("Regression of MPG on Weight")
detach(mtcars) #Detaches the data frame again

#To save the file in a specific format, do the following

pdf(mygraph.pdf) #Saves it in the current working directory
 attach(mtcars)
 plot(wt, mpg)
 abline(lm(mpg~wt))
 title("Regression of MPG on Weight")
 detach(mtcars)
dev.off()

#Awesome, quite and easy way to save a file as pdf. 

#Normally generating a graph deletes the previous one. 
#In order to prevent this, you can open a new graph window before creating a graph

#Create a new window with dev.new()

#There are also the following functions -- dev.new(); dev.next(); dev.prev(); dev.set() and dev.off()

#Customizing graphs
#Simple example...

#Input the follwing data
dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)

#First, we do a simple line graph
plot(dose, drugA, type = "b") #plot(x, y, type = "b") -- option "b" indicates to plot both points and lines

#Graphical parameters -- fonts, colors, axes and labels
#We can use the par() format here

opar <- par(no.readonly = TRUE) #Makes a copy of the original settings
par(lty = 2, pch = 17) #Changes the default line type to dashed and plotting points to triangles
plot(dose, drugA, type = "b") #Generate plot
par(opar) #Restore original settings. If I don't do this the settings will remain like this globally

#Symbols and lines














