#Write a R program to Analysis of the Linear and Nonlinear Relationship Between the Continuous Variables of Iris Data #Using Multiple Correlation coefficients Analysis of the Positive and Negative Relationship between Two or More variables (Continuous Vs Continuous, Continuous Vs Categorical Data) Using Multiple Correlations

install.packages("ggplot2")
library(ggplot2)
head(iris[1:5,]) 
head(iris[51:55,])
head(iris[101:105,]) 
iris.nospecies<- iris[,-5]
coi = cov(iris.nospecies)
print("Covariance Matrix")
print(coi)
cci = cor(iris.nospecies)
print("Multiple Pearson's Correlation Coefficients")
print(coi)
ccs = cor(iris.nospecies, method = "spearman")
print("Multiple Spearman's Correlation Coefficients")
print(ccs)
qplot(Species, Petal.Length, data=iris, geom="boxplot", fill=Species)
qplot (Petal.Length, data=iris, geom="density", alpha=I(.7),fill=Species)
if(cci[4,1] > 0){
  print("Relationship b/w Petal Width and SepalLength is Positive")
}else{
  print("Relationship b/w Petal Width and Sepal Length is Negative")
}

if(cci[2,1] > 0){
  print("Relationship b/w Sepal Width and Sepal
Length is Positive")
}else{
  print("Relationship b/w Sepal Width and Sepal Length is Negative")
}
install.packages("corrgram")
library(corrgram)
corrgram(iris, lower.panel=panel.conf, upper.panel=panel.pts)
corrgram(iris, lower.panel=panel.pie, upper.panel=panel.pts,diag.panel=panel.density, main=paste0("corrgram of petal and sepal", "measurements in iris data set"))

