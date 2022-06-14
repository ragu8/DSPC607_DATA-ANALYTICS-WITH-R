#write a R program to compute data of frequency distributions of MTcars.

u1 <-unique(mtcars$carb)
u1
t1 <-table(mtcars$carb)
t1
barplot(t1,xlab = "carburetors",ylab = "frequencies", main = "fd mtcar's carb")

u2 <-unique(airquality$Temp)
u2
t2<-table(airquality$Temp)
t2
barplot(t2,xlab = "temp",ylab = "frequencies", main = "fd Airtemp")

t3 <-table(cut(airquality$Temp,9))
barplot(t3,xlab = "temp",ylab = "frequencies", main = "fd Airtemp")
