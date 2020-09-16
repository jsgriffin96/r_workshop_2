####Data Types

numExample <- 5/2
typeof(numExample)

charExample <- "Hello!"
typeof(charExample)

logicExample <- 2==3
typeof(logicExample)

intExample <- 1:10
typeof(intExample)


####Converting between data types

##Good ideas

#Character to numeric
price <- "1450"
newPrice <- price + 100 #error, why?

price <- as.numeric(price)
newPrice <- price + 100

#Numeric to character
zipcode <- 90210

zipcode <- zipcode + 15 #this makes no sense, why would we do this?

zipcode <- as.character(zipcode) #storing as char prevents the above


##Bad Ideas

#decimal numeric to int
taxRate <- 0.03 # 3% tax rate
taxRate <- as.integer(taxRate) #turns to 0


#decimal numeric to character
gravity <- 9.81
gravity <- as.character(gravity)




####Vectors
numericVector <- c(1,2,3)
characterVector <- c("Test","this","out")
logicVector <- c(TRUE,TRUE,FALSE)

##Combine vectors
#numeric
a <- c(1,2,3)
b <- c(4,5,6)
ab <- c(a,b)

#character
e <- c("The","brown","fox")
f <- c("jumped","the","fence")
ef <- c(e,f)

#logic
x <- c(TRUE,TRUE,FALSE)
y <- c(FALSE, FALSE, TRUE)
xy <- c(x,y)

#combining vectors of different data types
different <- c(TRUE,"Text",40)
class(different)

different<-list(TRUE,"Text",40)
class(different)




#Named Vector
temperatures <- c(75,76,80,77,73,71,69)
names(temperatures) <- c('Mon','Tues','Wed','Thurs','Fri','Sat','Sun')
temperatures

#vector operations
a <- seq(1,10)
b <- seq(15,24)

#addition
a+b

#subtraction
a-b

#multiplication
a*b

a*4

#division
a/b

b/10


#vector functions
sum(a)

mean(a)

sd(a)

var(a)

prod(a) #multiplies all together


#vector indexing
temperatures <- c(75,76,80,77,73,71,69)
names(temperatures) <- c('Mon','Tues','Wed','Thurs','Fri','Sat','Sun')
temperatures

temperatures[1]
temperatures[0]

#vector slicing
temperatures[1:4]

weekdays<-temperatures[1:5]

#Select data
over.74 <- temperatures>74
over.74
temperatures[over.74]
temps.over.74 <- temperatures[over.74]






####Matrices
sampleMatrix <- matrix(data=seq(1,10), nrow = 5, ncol = 2, byrow = FALSE) #change byrow 
sampleMatrix

##Matrix operations
colSums(sampleMatrix)

rowSums(sampleMatrix)

colMeans(sampleMatrix)

rowMeans(sampleMatrix)


#add row to matrix
sampleMatrix <- rbind(sampleMatrix,c(5,6))
sampleMatrix

#add column to matrix
sampleMatrix <- cbind(sampleMatrix,c(7,8,9))
sampleMatrix

colnames(sampleMatrix) = c("Col1","Col2","Col3")
rownames(sampleMatrix) = c("Row1","Row2","Row3")





#convert matrix to data frame
sampleDataFrame <- as.data.frame(sampleMatrix)
class(sampleDataFrame)

str(sampleDataFrame)
summary(sampleMatrix)

#### Data Frames
name <- c('Jarrod','Jillian','Patrick','Grant')
age <- c(24,21,24,19)
iq <- c(210,480,200,5)
standing <- c('Super Senior','Senior','Super Senior','Junior')

eboard.df <- data.frame(name,age,iq,standing)

is.data.frame(eboard.df)



#subsetting dataframe
iqOver250 <- subset(eboard.df,iq > 250)
superSeniors <- subset(eboard.df, standing == "Super Senior")


####dataframe operations
#getting info from data frame
nrow(eboard.df)
ncol(eboard.df)

str(eboard.df)#structure


#Lets change Grant's IQ
eboard.df[4,3] <- 500
eboard.df[eboard.df$name=="Grant","iq"] <- 500

#accessing columns
eboard.df$name
eboard.df$iq
#accessing rows
eboard.df[1,]

#An example of functions 
mean(eboard.df$age)
mean(eboard.df$iq)


#build in data frame
states <- state.x77

#head/tail
head(states)
tail(states)























####Logical operators
#Equals
2==2

5==6

"Jarrod"=="Cool"

"Test"=="Test"

#Not equal to
5 != 9

"Grant" != "Grant"

#less than
512 < 1024

3 < 3
3 <= 3

#greater than
512 > 1024

4 > 4
4 >= 4
#AND/OR/NOT
TRUE & TRUE
TRUE & FALSE

TRUE | FALSE
TRUE | TRUE
FALSE | FALSE

!TRUE
!FALSE


####Control Statements
password <- "hunter2"

userInput <- "hunter2"

#if statements
if(password==userInput) {
  print("Correct Password!")
}


if(password!=userInput){
  print("Wrong Password!")
}  

##if else statements
if(password==userInput) {
  print("Correct Password!")
} else if(password!=userInput){
  print("Wrong Password!")
}


##for loops
week <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")

for (days in week) {
  print(days)
}

##Combining both ideas
random <- sample(1:1000, 50)

for (number in random) {
  if(number>500){
    print(number)
  }
}


#### Creating fuctions
printTen <- function(item){
  for (i in 1:10) {
    print(item)
  }
}

printTen("Ok!")


##recursion (probably wont talk about it)
factorial <- function(x){
  if(x==1){
    return(1)
  }
  
  x*factorial(x-1)
}

factorial(5)




