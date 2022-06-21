#Learning R Programming Basic Commands

#Addition
1+1	

#Subtraction
10-2

#Multiplication
2*2

#Division
100/10

#Exponentiation
10^2

#abs function in R
abs(-10)

#Ceiling and Floor Function in R
ceiling(4.5) 
floor(4.5)

#Square Root Fun in R
sqrt(10)

#Exponentiation Fun in R
exp(2)
 
#Print pi value.
pi

#natural logs(i.e. base e)
log(100)

#base 10 logs
log(100, base=10)

#Expression
(2+2)*2      
1+(2*2)

#Relational operation
2==2         
5<=6
5>=6

#Creating a Vector with integer vales using c fun in R
x<- c(2,5,7,8,9) 
x > 5

#Return mean value
mean(c(1,2,3,4))  

#Creating a Vector with strings using c fun in R
x<- c("apple","banana") 
x

#random deviation function
y<-rnorm(4,5)            
x;y

#Current working directory
getwd()

#base packages
search() 

#creating a vector with 1 to 10.
x<-1:10                  
x

#list the used variables
ls( )

#x and y values are printed in a file called xy.RData.
save(x, y, file = "xy.RData")

#creating ".RData" in current working directory
#Loading  "xy.RData" in current working directory
load("xy.RData")             
unlink("xy.RData")

#vectors
lsx<-c(TRUE,FALSE)       	   
y<-c("a","b","c")	           
z<-c(1,2.3,4)	               
m<-c(1.2,1.5,1.7)	          
lsx; y; z; m
class(x); typeof(x); mode(x)

#Test whether the given data are numeric or not
is.numeric(c("a","b"))       
is.numeric(c(5,6))

#Converted the given into character form
as.character(c(1,2,3))

#Converted the given into numeric form 
as.numeric(c("c","4","b"))   

#Generates the sequence from:to by
seq(1,8, by =2) 

#Replicate Elements of Vectors and Lists
rep(1,5)	                   
rep(c(1,2,3),5)

#Names of x
x<-c(1,2,3,4,5)
names(x)<-c("a","b","c","d","e") 
x

#by numeric position
x[c(1,2,3)]

#by logical vector
x[x<3]	     
x

#Creating a matrix
y<-matrix(c(1,2,3,4,5,6),byrow=TRUE,ncol=2) 
y          
class(y)
dim(y)

#no of rows
nrow(y)	

#no of column
ncol(y)

#fix the  names of rows and columns
rownames(y)<-c("a","b","c")
colnames(y)<-c("col1","col2")
y                            
y["a",]	
y[c(1,2),]

#Creating a list
x = list(name="Arun Patel", nationality="Indian", height=5.5, grades=c(95,45,80))
x
class(y)
x$name
x$hei

#Creating a Data frame
z<-data.frame(var1=1:9,var2=letters[1:9])
z
View(z)

#Reading the Data from csv file
data=read.csv("d:\\sample.csv",header=T,sep=",")
data
nrow(data)
ncol(data)
data
head(data)

#Creating a function 
hw.f1 <- function()
{
  hw <- "Hello World"
  hw
}
hw.f1()

#packeges 
Install.packages("Matrix")
dependencies=TRUE 
Install.packages("Matrix", dependencies=TRUE)
d=library(Matrix)
d

#user survey data from MASS package
library(MASS)	
#load an internal data set
data(survey)	
data()
mydata<-survey
names(mydata)  
str(mydata)

#removing a variable 
rm(x)                    
x

