testScore <- 86
class(testScore)


#Vectors

names <- c('Jarrod', 'Patrick', 'Jillian', 'Grant')
ages <- c(24, 24, 21, 19)
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






