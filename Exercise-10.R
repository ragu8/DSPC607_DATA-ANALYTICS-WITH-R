#Testing the mean of one sample An illustrative and fairly common statistical hypothesis test is the one sample t-test. You use it when you have one sample and you want to test whether that sample likely came from a population by comparing the mean against the known population mean. For this test to work, you have to know the population mean.

head(precip)
is.vector(precip)
mean(precip)

t.statistic <- function(thesample, thepopulation)
{
  numerator <- mean(thesample) - mean(thepopulation)
  denominator <- sd(thesample) / sqrt(length(thesample))
  t.stat <- numerator / denominator
  return(t.stat)
}

population.precipitation <- rnorm(100000, mean=38)
t.stats <- numeric(10000)

for (i in 1:10000){
  a.sample <- sample(population.precipitation, 70)
  t.stats[i] <- t.statistic(a.sample, population.precipitation)
}

library(ggplot2)
tmpdata <- data.frame(vals=t.stats)
qplot(vals, data=tmpdata, geom="histogram",color=I("white"),xlab="sampling distribution of t-statistic",ylab="frequency")
t.statistic(precip, population.precipitation)
qt(.025, df=69)
t.test(precip, mu=38)
t.test(precip, mu=38, alternative="less")




