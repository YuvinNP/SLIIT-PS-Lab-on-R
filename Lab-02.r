#print random values(random order) from 1 to 3
print (sample(1:3))

#replace = false means we can't replace the values
print(sample(1:3, size=3,replace=FALSE))

#replace = false means we can replace the values
print(sample(1:3, size=3,replace=TRUE))

#2,5,3 should be in sample
print(sample(c(2,5,3), size=3,replace=FALSE))
#cannot use replace=false, because size is 4 then one of the values should be repeated
print(sample(c(2,5,3), size=4,replace=TRUE))

#1 is printed in less number of times, 2 is printed in more number of times
print(sample(1:2, size=10,prob=c(1,3), replace=TRUE))

#############################IF STATEMENT#############################

x<-1:10

#x gets random values
#first number is less than 5
if(sample(x,1)<=5)
{
  print("X is less than 5")

}else{
  
  print("X is greater than 5")
}

#same as the previous one
x<-1:10

if(sample(x,1) < 5){
  y<-0
  
}else{
  y<-1
  
}
y

x<-1

if(x<0){
  print("negative number")
}else if(x>0){
  print("positive number")
}else
  print("Zero")

#get user input
my.age<-as.integer(readline(prompt = "please enter your age: ")) #this line should execute first
#please enter your age: 42
if(my.age<18){
  print("you are not a major.")

}else{
  if(my.age>=18 && my.age<=60){
    print("you are eligible to work")
  
  }else{
    print("you are too old to work")    
  
  }
}

#for loops
for(i in 1:15){
  print(i)
}

#array
student<-c("Ann", "Steave", "Kyle", "John")

for(i in 1:4){
  print(student[i])
}

for(i in 1:6){
  print(student[i])
}

i<-1
i<-5
#while loops
while(i<10){
  print(i)
  i<-i + 1
  
}


#using vectors
x<-2.987

while(x<=4.987){
  x=x+0.987
  print(c(x,x-2,x-1))
  
}

#factorial of a number
x<-1;
fact<-as.integer(readline(prompt = "please enter your no: "))

for(i in 1:fact){
  
  x=x*i
}
x

factorial = 1
num=as.integer(readline(prompt = "please enter your no: "))

if(num<0){
  print("sorry there is no answer for negative values")
}else if(num==0){
  print("the factorial of 0 is 1")
}else{
  for(i in 1:num){
    
    factorial<-factorial*i
  }
  print(paste("the factorial of", num,"is", factorial))
}

