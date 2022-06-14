#Write a R program to test the hypothesis which proves the mileage is better for manual car than cars with automatic transmission using two means from mtcars data set.

library(car)
library(ggplot2)
mean(mtcars$mpg[mtcars$am==0])
mean(mtcars$mpg[mtcars$am==1])
mtcars.copy <- mtcars
mtcars.copy$transmission <- ifelse(mtcars$am==0,"auto", "manual")
mtcars.copy$transmission <- factor(mtcars.copy$transmission)
qplot(transmission, mpg, data=mtcars.copy,geom="boxplot", fill=transmission)
automatic.mpgs <- mtcars$mpg[mtcars$am==0]
manual.mpgs <- mtcars$mpg[mtcars$am==1]
t.test(automatic.mpgs, manual.mpgs, alternative="less")
t.test(mpg ~ am, data=mtcars, alternative="less")

#Write a R program to test more two means using ANOVA from weight loss data set.

head(WeightLoss)
table(WeightLoss$group)
qplot(group, wl2, data=WeightLoss, geom="boxplot", fill=group)
the.anova <- aov(wl2 ~ group, data=WeightLoss)
summary(the.anova)
pairwise.t.test(WeightLoss$wl2, as.vector(WeightLoss$group))
