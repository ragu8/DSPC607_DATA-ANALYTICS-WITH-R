# Write a R program to analysis of the Linear and Nonlinear. Relationship between two variable in the different data sets.women Data and mtcars Data)Using Covariance,Pearson and Spearman Correlation coefficients.


# 1.Analysis of the the Positive Relationship between Height and Weight of Women Using Correlation Coefficients.
 
head(women,15)
scatter.smooth(women$height,women$weight,main="ScatterPlot",xlab="Height",ylab="Weight")
c11 = cov(women$height, women$height)
c12 = cov(women$height, women$weight)
c21 = cov(women$weight, women$height)
c22 = cov(women$weight, women$weight)
cm1 = matrix(data = c(c11,c12,c21,c22), nrow = 2, byrow = TRUE)
print("Covariance Matrix")
print(cm1)
cm2 = cov(women) 
print("Covariance Matrix")
print(cm1)
cc11 = cor(women$height,women$height)
cc12 = cor(women$height,women$weight)
cc21 = cor(women$weight,women$height)
cc22 = cor(women$weight,women$weight)
cc1 = matrix(data = c(cc11,cc12,cc21,cc22), nrow = 2, byrow = TRUE)
print("Pearson's Correlation Coefficients")
print(cc1)
cc2 = cor(women)
print("Pearson's Correlation Coefficients")
print(cc2)
cc3 = cor(women,method = "spearman")
print("Spearman's Correlation Coefficients")
print(cc3)
if(cc11 > 0){
  print("Relationship b/w Women's Weight and Height is Positive")
} else{
  print("Relationship b/w Women's Weight and Height is Negative")
  }



#2. Analysis of the Negative Relationship Between Weight of Cars and Mileage Using Correlation coefficients.

head(mtcars,32)
co = cov(mtcars$wt, mtcars$mpg)
print("Covariance")
print(co)
cc = cor(mtcars$wt, mtcars$mpg)
print("Pearson's Correlation Coefficient")
print(cc)
ccs = cor(mtcars$wt, mtcars$mpg,method = "spearman")
print("Spearman's Correlation Coefficient")
print(ccs)
scatter.smooth(mtcars$wt, mtcars$mpg, main="Scatter Plot", xlab="CarWeight", ylab="Mileage")
if(cc > 0){ 
  print("Relationship b/w Car Weight and Mileage is Positive")
} else{
  print("Relationship b/w Car Weight and Mileage is Negative")
  }






