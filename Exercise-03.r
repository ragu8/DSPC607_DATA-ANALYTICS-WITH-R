#Create a data frame called student data, explore the structure of the data and process it using data.frame.

sdata <- data.frame(sname=c("Raja","somu","Roja"),
                    srollno=c(101,103,102),
                    sage=c(19,20,18),
                    ssex=c("male","male","female"),
                    sbranch=c("CSE","MECH","EEE"),
                    m1=c(90,79,88),
                    m2=c(95,85,90),
                    m3=c(85,25,85),
                    m4=c(70,40,60),
                    m5=c(67,67,89))

head(sdata)
nrow(sdata)
ncol(sdata)

result = vector(mode="character",length=0)

for(i in 1:nrow(sdata))
{
  if((sdata$m1[i] > 50) && sdata$m2[i] > 50 && sdata$m3[i] > 50 &&
     sdata$m4[i] > 50 && sdata$m5[i] > 50)
  {
    status<-"Pass"
  }
  else
  {
    status<-"Fail"
  }
  result = append(result,status)
}

Total = sdata$m1+sdata$m2+sdata$m3+sdata$m4+sdata$m5
ptge = Total/5
sdata = cbind(sdata,Total,result ,ptge)
sdata


#Load the Student dataset from folder, explore the structure of the dataset and process it using read.table.

sdata <- read.table(file.choose(), sep=",", header=TRUE)
head(sdata)
nrow(sdata)
ncol(sdata)

result = vector(mode="character",length=0)
for(i in 1:nrow(sdata))
{
  if((sdata$m1[i] > 50) && sdata$m2[i] > 50 && sdata$m3[i] > 50 &&
     sdata$m4[i] > 50 && sdata$m5[i] > 50)
  {
    status<-"Pass"
  }
  else
  {
    status<-"Fail"
  }
  result = append(result,status)
}
Total = sdata$m1+sdata$m2+sdata$m3+sdata$m4+sdata$m5
ptge = Total/5
sdata = cbind(sdata,result,Total,ptge)
sdata

