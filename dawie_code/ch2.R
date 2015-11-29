
#This is a chapter about how you work with data. 

#Data structures

#Vectors
#One dimensional arrays that can hold numeric data
#Combine function c() is used to form the vector (concatenate)

a <- c(1, 2, 5, 3, 6, -2, 4) #Numeric vector
b <- c("one", "two", "three") #Character vector
c <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE) #Logical vector

#These are some examples of vectors. NB! -> YOu can't mix types in a vector (unike Python)

#You can refer to elements in a vector 

a[3] #Refers to the third element in vetor a
a[c(1, 3, 5)] #Refers to the first, third and fifth element of the vector a

#Colon operator generates a sequence of numbers 

d <- c(2:6) #Generates numbers from 2 to 6

#Matrices

m <- matrix(vector, nrow=number_of_rows, ncol=number_of_columns,
            byrow=logical_value, dimnames=list(char_vector_rownames, char_vector_colnames))

#vector -- elements of the matrix
#nrow + ncol -- row and column dimensions
#dimnames -- optional row and column labels
#byrow -- indicates whether the matrix shold be filled in by row or by column (default is by column)

y <- matrix(1:20, nrow=5, ncol=4) #Generates a 5X4 matrix
cells <- c(1, 26, 24, 68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE, dimnames=list(rnames, cnames))

#Matrices are two dimensional and can contain only one data type
#More than two dimensions --> Arrays
#Multiple modes of data --> Dataframes

#Arrays

dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3", "C4")
z <- array(1:24, c(2, 3, 4), dimnames=list(dim1, dim2, dim3))

#Data frames... Probably the most important and relevant measure
#Columns can contain different modes of data
#Most common data structure in R

mydata <- data.frame(col1, col2, clo3, ...) #Example

#col1, col2, col3 -- column vectors of ANY type

#Example of a data frame. 

patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Impoverished", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)

#Each column must have only one mode, but you can put columns of different modes together

patientdata[1:2] #Specifies the first two columns of this data frame
patientdat$age #The $ operator allows you to call a specific element of the data frame

table(patientdata$diabetes, patientdata$status) #Cross-tabulate the entries

#Attach, detach and with
#Attach -- adds the data frame to the R search path

summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)

#Instead of writing everything, you can simply use attach. 

attach(mtcars) #Basically you tell R that you are giong to be using this data frame
  summary(mpg)
  plot(mpg, disp)
  plot(mpg, wt)
detach(mtcars) #Removes the data frame after you have used it

#Mostly only useful when arguments can only have one name
  
#Factors
#Nominal (categorical) variable -- Without implied order
#Ordinal (ordered categorical) variable -- Imply order, but not amount
#Continuous variable -- Take on any value within a given range. Both order and amount are implied. 
    #Age (in years) -- continuous variable
  
#Nominal and ordinal variables are FACTORS
  
#Examples

diabetes <- factor(diabetes) #Stores this as the vector (1, 2, 1, 1), NOT ordered
status <- factor(status, order = TRUE) #Will encode the vector as (3, 2, 1, 3), order part indicates it is an ordered variable
#Assigns are created in alphabetical order by default

#This is obviously not always going to work. The order might not be relevant in the case of alphabetical ordering
#We want to override the default setting

status <- factor(status, order = TRUE, levels = c("Poor", "Improved", "Excellent"))
sex <- factor(sex, levels = c(1, 2), labels = c("Male", "Female"))


#Lists (similar to Python) are a complex data type
#Can contain a variety of objects (strings, numeric vectors, matrices, etc.)

#Data input

#edit() function invokes R's text editor -- enter data manually

#Example -- creating a data frame

mydata <- data.frame(age=numeric(0), gender=character(0), weight=numeric(0)) 
#age=numeric(0) creates a variable for a specifc mode (without actual data)

mydata <- edit(mydata) #Edit function operates on a copy of itself. Must assign a destination to edit. 
fix(mydata) #Shortcut for the editor                

#You can also embed data directly (I don't like doing it this way, seems cumbersome)

mydatatxt <- "
age gender weight
25 m 166
30 f 115
18 f 120
"

mydata <- read.table(header=TRUE, text=mydatatxt)

#These techniques are relevant for smaller data sets. Normally we won't use them

#Importing data from a delimited text file.
#Use the read.table command -- reads a file in table format and saves as data frame



  
  
  















