
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

#pch -- symbols for plotting points
#cex -- symbol size
#lty -- line type
#lwd -- line width

#colors() returns all available colour names (There are more than 600)

#RColorBrewer package allows you to create attractive color palettes

install.packages("RColorBrewer")
library(RColorBrewer)
n <- 7
mycolors <- brewer.pal(n, "Set1")
barplot(rep(1,n), col=mycolors)

display.brewer.all() #Shows all palettes


#Grey levels are generated as a vector of numbers between 0 and 1
n <- 10
mycolors <- rainbow(n)
pie(rep(1, n), labels=mycolors, col=mycolors)
mygrays <- gray(0:n/n)
pie(rep(1, n), labels=mygrays, col=mygrays)

#Shows some of the different gray levels

#Text characteristics - font, size and style

#Graph and margin dimensions

#pin -- plot dimensions (expressed in inches)
#mai -- margin size (expressed in inches)

par(pin = c(4, 3), mai = c(1, 0.5, 1, 0.2)) 
#Produces a graph that is 4 inches wide and 3 inches tall, with a 1 inch margin on the bottom and top, 0.5 on the left and 0.2 on the right.

#Let us look back at our simple example. 

opar <- par(no.readonly = TRUE) #Save original grpahics settings, so that we can reset it
par(pin=c(2,3)) #Graph is now 2 inches wide and 3 inches tall
par(lwd=2, cex=1.5) #Lines will be 2 times their default width and symbols 1.5 times
par(cex.axis=0.75, font.axis=3) #Axis text is set to italic and scaled to 75%. 
plot(dose, drugA, type = "b", pch=19, lty=2, col="red") #Filled red circles and dashed lines
plot(dose, drugB, type = "b", pch=23, lty=6, col="blue", bg="green") #Filled green diamonds (with blue border) and blue dashed lines
par(opar)

#Parameters set in the par() function are global, while those set in the plot function are local


#Customizing!
#Titles

#The general layout is like the following
title(main="main title", sub="subtitle",
      xlab="x-axis label", ylab="y-axis label")

#One example 
title(main="My Title", col.main="red", 
      sub="My Subtitle", col.sub="blue",
      xlab="My X label", ylab="My Y label",
      col.lab="green", cex.lab=0.75)

#col.main = "red" -- gives us a red title
#col.sub = "blue" -- gives a blue subtitle 
#col.lab = "green" -- gives green x,y labels
#cex.lab = 0.75 -- labels are 75% of default

#Axes
#You can create deafult axes with the axis() function

#Example of custom axes

x <- c(1:10)
y <- x
z <- 10/x
opar <- par(no.readonly = TRUE)

par(mar=c(5,4,4,8) + 0.1) #Increases the margin
plot(x, y, type ="b",
     pch = 21, col="red",
     yaxt="n", lty=3, ann=FALSE) #Plot x and y, while supressing annotations

lines(x, z, type="b", pch=22, col="blue", lty=2) #Adds x and 1/x lines

#Draws axes
#at -- shows where tick marks should be drawn
#labels -- labels to be placed at tick marks
#tck -- length of each tick mark

axis(2, at=x, labels=x, col.axis="red", las =2)
axis(4, at=z, labels=round(z, digits = 2),
     col.axis="blue", las =2, cex.axis=0.7, tck=-0.01)

#Add titles and text
mtext("y=1/x", side=4, line=3, cex.lab=1, las=2, col = "blue")

title("An example of creative axes",
      xlab = "X vlaues", ylab = "Y=X")

par(opar)



















