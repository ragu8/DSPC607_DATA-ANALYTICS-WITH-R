#Write a R program to perform the matrix operations such as +, -, %*%, t(), solve(), diag() using rbind and cbind commands.

A <- matrix(data=c(1,2,3,4,5,6),nrow=3,ncol=2,byrow = T)
B <- matrix(data=c(1,2,3,4,5,6),nrow=3,ncol=2,byrow = F)
C <-cbind(c(1,2,3,4),c(1,2,3,4))
D <-rbind(c(1,2),c(3,4))
A                                                                        
B
C
D
print("RESULTANT MATRICES")
print("ADDITION THE TWO MATRICES")
A+B
print("SUBTRACTION THE TWO MATRICES")
A-B
print("SCALAR MULTIPLICATION OF MATRIX")
3*A
print("MULTIPLICATION THE TWO MATRICES")
C%*%D
print("DIAGONAL MATRIX OF A")
diag(A)
print("TRANSPOSE OF C")
t(C)
print("INVERSE OF D")
solve(D)



#Write a R program to perform the matrix operations such as +, -, %*%, t(), solve(), diag() using vectors and matrix get the input from keyboard.

print("ENTER THE SIZE OF THE MATRIX : A ")
row_1 <-as.integer(readline("ROW SIZE : "))
column_1<-as.integer(readline("COLUMN SIZE : "))
dim_A <- row_1*column_1
avec_1=vector(mode ="integer",length = 0)
index_1 =1
for (i in 1:dim_A)
{
  cat("ENTER THE ELEMENT :", index_1)
  value_1 = as.integer(readline("---:"))
  avec_1 = c(avec_1,value_1)
  index_1 = index_1 + 1
}
A <- matrix(avec_1,nrow = row_1 ,ncol = column_1,byrow = T )

print("ENTER THE SIZE OF THE MATRIX : B ")
row_2 <-as.integer(readline("ROW SIZE : "))
column_2<-as.integer(readline("COLUMN SIZE : "))
dim_B <- row_2*column_2
avec_2=vector(mode ="integer",length = 0)
index_2 =1
for (i in 1:dim_B)
{
  cat("ENTER THE ELEMENT :", index_2)
  value_2 = as.integer(readline("---:"))
  avec_2 = c(avec_2,value_2)
  index_2 = index_2 + 1
}
B <- matrix(avec_2,nrow = row_2 ,ncol = column_2,byrow = F )

C <-cbind(c(1,2,3,4),c(1,2,3,4))
D <-rbind(c(1,2),c(3,4))
A                                                                        
B
C
D
print("RESULTANT MATRICES")
print("ADDITION THE TWO MATRICES")
A+B
print("SUBTRACTION THE TWO MATRICES")
A-B
print("SCALAR MULTIPLICATION OF MATRIX")
3*A
print("MULTIPLICATION THE TWO MATRICES")
C%*%D
print("DIAGONAL MATRIX OF A")
diag(A)
print("TRANSPOSE OF C")
t(C)
print("INVERSE OF D")
solve(D)



