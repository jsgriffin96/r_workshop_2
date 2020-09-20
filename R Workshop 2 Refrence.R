testScore <- 86
class(testScore)


#Vectors

name <- c('Jarrod', 'Patrick', 'Jillian', 'Grant')
age <- c(24, 24, 21, 19)
isMale <- c(TRUE, TRUE, FALSE, TRUE)
iq <- c(210, 415, 450, 5)

#combining different data types in vector
exampleVector <- c('Hello', 50, TRUE)
class(exampleVector)

exampleList <- list('Hello', 50, TRUE)
class(exampleList)


#named vectors
temperatures <- c(75, 74, 71, 68, 72, 75, 79)
names(temperatures) <- c('Mon', 'Tues', 'Wed', 'Thur', 'Fri', 'Sat', 'Sun')
temperatures

#vector operations
temperaturesCel <- (temperatures - 32) * 5/9


#Matrix
sampleMatrix <- matrix(data=seq(1,10), nrow = 5, ncol = 2, byrow = FALSE) 
sampleMatrix

#built-in matrix
states <- state.x77
states

head(states)
tail(states)

#Data Frame
class(states)
states.df <- as.data.frame(states)
class(states.df)


#create dataframe from multiple vectors
eboard.df <- data.frame(name, age, iq, isMale)

#dataframe operations
nrow(eboard.df)
ncol(eboard.df)
str(eboard.df)
summary(eboard.df)

#accessing data
eboard.df[4,3] <- 500

eboard.df$name
eboard.df[,1]


#add a row/entry
cailin <- data.frame(name = 'Cailin',age = 24,iq = 1200,isMale = FALSE)
eboard.df <- rbind(eboard.df, cailin)

#adding a new column
favColor <- c("blue", 'green', 'red', 'yellow', 'purple')
eboard.df <- cbind(eboard.df, favColor)

#from modified column
weightedIQ <- eboard.df$iq/4
eboard.df <- cbind(eboard.df, weightedIQ)

#duplicate column
eboard.df <- cbind(eboard.df, eboard.df$favColor)

#use rep to fill column
eboard.df <- cbind(eboard.df, rep('Cal Poly Pomona', 5))

#rename columns
colnames(eboard.df)
colnames(eboard.df)[7] <- "school"
colnames(eboard.df)[8] <- 'favColor2'


#selecting rows
eboard.df[1,]
eboard.df[1:3,]

subset(eboard.df, isMale == TRUE)

subset(eboard.df, age > 23)

#selecting cols
eboard.df['name']
eboard.df[1]

eboard.df[c('name','favColor')]
eboard.df[c(1,5)]

#functions
sum(eboard.df$age)
mean(eboard.df$iq)
sd(eboard.df$weightedIQ)
var(eboard.df$iq)
prod(eboard.df$age)


#dealing with missing data
airQ.df <- airquality
class(airQ.df)
summary(airQ.df)
colSums(is.na(airQ.df))

OzoneMean <- mean(airQ.df$Ozone, na.rm = TRUE)
airQ.df['Ozone'][is.na(airQ.df['Ozone'])] <- OzoneMean

SolarMean <- mean(airQ.df$Solar.R, na.rm = TRUE)
airQ.df['Solar.R'][is.na(airQ.df['Solar.R'])] <- SolarMean
