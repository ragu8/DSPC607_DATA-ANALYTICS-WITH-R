#Write a R to compute Interquartile Range (IQR) for a given data

xdata = c(5,10,12,15,20,25,27,30,35)
MinQ= quantile(xdata,0)
FQ = quantile(xdata,0.25)
SQ = quantile(xdata,0.5)
TQ = quantile(xdata,0.75)
MaxQ= quantile(xdata,1)

cat("Minimum=",MinQ)
cat("Lower Quartile=",FQ)
cat("Median=",SQ)
cat("Upper Quartile=",TQ)
cat("Maximum=",MaxQ)

AQ = quantile(xdata,prob=c(0,0.25,0.5,0.75,1))
cat("All the Quartiles",AQ)

summary(xdata)

boxplot(xdata,main="Interquartile Range (IQR)",ylab="xdata")

as.numeric(quantile(xdata,0.75)-quantile(xdata,0.25))

IQR(xdata)



#Write a R to compute Interquartile Range (IQR) for Sepal Length of Irisdata

head(iris,150)
xdata = iris$Sepal.Length

MinQ= quantile(xdata,0)
FQ = quantile(xdata,0.25)
SQ = quantile(xdata,0.5)
TQ = quantile(xdata,0.75)
MaxQ= quantile(xdata,1)

cat("Minimum=",MinQ)
cat("Lower Quartile=",FQ)
cat("Median=",SQ)
cat("Upper Quartile=",TQ)
cat("Maximum=",MaxQ)

AQ = quantile(xdata,prob=c(0,0.25,0.5,0.75,1))
cat("All the Quartiles",AQ)

summary(xdata)

boxplot(xdata,main="Interquartile Range for Sepal Length",ylab="Centimetres")

as.numeric(quantile(xdata,0.75)-quantile(xdata,0.25))

IQR(xdata)
