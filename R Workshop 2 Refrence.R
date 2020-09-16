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
sampleVector <- c(1,2,3)

#Named Vector
temperatures <- c(75,76,80,77,73,71,69)
names(temperatures) <- c('Mon','Tues','Wed','Thurs','Fri','Sat','Sun')
temperatures

#Select data
over.74 <- temperatures>74
over.74
temperatures[over.74]
temps.over.74 <- temperatures[over.74]

#Combine vectors
a <- c(1,2,3)
b <- c(4,5,6)
ab <- c(a,b)


####Matrices
sampleMatrix <- matrix(data=c(1,2,3,4), nrow = 2, ncol = 2, byrow = FALSE) #change byrow 
sampleMatrix

#add row to matrix
sampleMatrix <- rbind(sampleMatrix,c(5,6))
sampleMatrix

#add column to matrix
sampleMatrix <- cbind(sampleMatrix,c(7,8,9))
sampleMatrix

colnames(sampleMatrix) = c("Col1","Col2","Col3")
rownames(sampleMatrix) = c("Row1","Row2","Row3")

#head/tail
head(sampleMatrix)
tail(sampleMatrix)

#### Data Frames
name <- c('Jarrod','Jillian','Patrick','Grant')
age <- c(24,21,24,19)
iq <- c(210,480,200,5)
standing <- c('Super Senior','Senior','Super Senior','Junior')

eboard.df <- data.frame(name,age,iq,standing)

is.data.frame(eboard.df)

#Lets change Grant's IQ
eboard.df[4,3] <- 500

#accessing columns
eboard.df$name
eboard.df$iq

#An example of functions 
mean(eboard.df$age)
mean(eboard.df$iq)


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

printTen("What?")


##recursion (probably wont talk about it)
factorial <- function(x){
  if(x==1){
    return(1)
  }
  
  x*factorial(x-1)
}

factorial(10)




