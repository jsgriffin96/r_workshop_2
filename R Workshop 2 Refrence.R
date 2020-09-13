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

##Good

#Character to numeric
price <- "1450"
newPrice <- price + 100 #error, why?

price <- as.numeric(price)
newPrice <- price + 100

#Numeric to character
zipcode <- 90210

zipcode <- zipcode + 15 #this makes no sense, why would we do this?

zipcode <- as.character(zipcode) #storing as char prevents the above



