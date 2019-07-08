x<-1:10
x<-3:12
x<=5

x[x<5]
a<-23
b=45

#Numeric Vector
A<-c(1,12,4,5)

#Character Vector
Y<-c("Ann", "Peter", "Steve")

#Logical Vector
Z<-c(TRUE, FALSE, TRUE)
Z<-c(T, F, T) #also correct


class(A) #numeric
class(Y) #character
class(Z) #logical

A+6
#All the elements in the vector 'A' will be increased by 6

A>15
#this gets the original numbers of A, not the incremented numbers
#condition is applied for all the elements in the vector
A>=1

Q<-A[A>5]

A[A>=5]

seq(1:15)
#seq(1,15)
seq(1,15,by=2)

rep(5,9)
#display 1 to 4 numbers 3 times
rep(1:4,3)

rep(1:4,each=2)
rep(1:3, 1:3)
rep(1:3,c(1,5,4))

f<-c("m","f","m","f")
class(f)
f1<-factor(f)

d<-c(1,2,3)
f2<-factor(d)

e<-c(T,F,F,T,T)
f3<-factor(e)

l<-list(name="A", age="23", marks<-c(60,56,80,90))
#access inner objects
l["age"]
l["name"]
l$name
l$age
#l[[3]]
m1<-matrix(1:20, nrow = 5, ncol = 4)
#m1<-matrix(1:20, nrow = 5, ncol = 4,byrow = TRUE)

length(m1)
dim(m1)
m1[2,2]
m1[1,] #elements of first row
m1[,2]

df<-data.frame(name=c("a","b"), gender=factor(c("m","f")), ht=c(6.5,5.5), age=c(25,24))

df[[2]]#two square brackets for factor
df[4]#vector
df["age"]
#indexes are starting from 1, not 0






