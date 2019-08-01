
#import cs file to the R script file
setwd("C:/Users/it18113600/Desktop/PS")
data<-read.csv(file = "DATA 3.csv")

#assign names for colums
names(data) <- c("Age", "Gender", "Accommodation")

#change gender 1 and 2 into male and female
data$Gender <- factor(data$Gender, c(1,2), c("Male", "Female"))

data$Accommodation <- factor(data$Accommodation, c(1,2,3), c("Home", "Boarded", "Lodging"))

#run till all the variable names are displayed
attach(data)

#frecquency_table

gender.freq <- table(Gender)
gender.freq

accommodation.freq <- table(Accommodation)
accommodation.freq


age.freq <- table(Age)
age.freq

#numerical variable univariate analysis

mean(Age)

median(Age)

min(Age)

max(Age)

quantile(Age)

summary(Age)

#pie chart
pie(gender.freq,main = "Pie chart for Gender")
pie(accommodation.freq,main = "Pie chart for Accommodation")

pie(gender.freq,main = "Pie chart for Gender", col = c("green", "red"))
pie(accommodation.freq,main = "Pie chart for Accommodation", col = c("red", "blue", "yellow"))

#bar plot

barplot(gender.freq,main = "Bar Plot for Gender")
barplot(gender.freq,main = "Bar Plot for Gender",xlab = "gender", ylab = "frequency", col = c("green","red"))
barplot(accommodation.freq,main = "Bar Plot for Accommodation",xlab = "Accommodation", ylab = "Frequency", col = c("green","red", "blue"))

#bivariate
gender_acc.freq <- table(Gender, Accommodation)
gender_acc.freq 

#boxplot
boxplot(Age, main="Boxplot")


boxplot(Age~Gender, 
        main="Boxplots for Age by Gender", 
        xlab="Gender",ylab="Age")

boxplot(Age~Accommodation, 
        main="Boxplots for Age by Accommodation", 
        xlab="Accommodation",ylab="Gender")


boxplot(Age~Accommodation, 
        main="Boxplots for Age by Accommodation", 
        xlab="Accommodation",ylab="Gender", outpch=16)

#contigency table
xtabs(Age~Gender+Accommodation)/gender_acc.freq

gender.freq
