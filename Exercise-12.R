#Write a R- Program to predict the mileage of car based on weight of  car using Simple Linear Regression 
 
packages="datasets" 
print("Training Data:\n") 
head(mtcars) 
model <- lm(mpg ~ wt, data=mtcars) 
plot(mtcars$wt,mtcars$mpg,main = "Simple Linear Regression (Mileage and Weight)") 
abline(model,col = "red") 
summary(model) 
print("Testing Data:") 
pred_mpg=predict(model, newdata=data.frame(wt=6))
cat("Mileage per Gallons (Predicted):", pred_mpg) 
coeff=model$coefficients 
cat('y-Intercept (b0) :',coeff[1]) 
cat('Coefficients (b1) :',coeff[2])


#Multiple regression
model <- lm(mpg ~ wt + hp, data=mtcars)
summary(model)

coef(lm(mpg ~ wt + hp, data=mtcars))
equation1<-coef(lm(mpg ~ wt, data=mtcars))
equation2<-coef(lm(mpg ~ hp, data=mtcars))
predict(model, newdata = data.frame(wt=2.5, hp=275))

library(ggplot2)
ggplot(mtcars,aes(y=mpg,x=wt,color=hp))+geom_point()+
  stat_function(fun=equation1,geom="line",color=scales::hue_pal()(2)[1])+
  stat_function(fun=equation2,geom="line",color=scales::hue_pal()(2)[2])



