

#Ans1. 
France = 4
Croatia = 2

if(France > Croatia){
  print("Team France Wins")
}else{
  print("Team Croatia Wins")
}


#Ans2 .
str(mtcars)
for(i in 8:11){
  mtcars[,i] <- as.factors(mtcars[,i])
}
str(mtcars)

#Ans3 .
install.package("DT")
library(readxl)
library(DT)
head(is.na(Data.set))
Pmiss <- function(x){
  sum(is.na(x)/length(x))*100
}
missing_per_col <- apply(Data.set,2,Pmiss)
head(missing_per_col)

#Ans4. 
misssing_per_row<- apply(Data.set,1,Pmiss)
head(missing_per_row)

#Ans 5 .
Dataset.numeric<- Dataset[,sapply(ds2_1, is.numeric)]
summary(Dataset.numeric)
for (i in Dataset.numeric)
{
  boxplot(i)
}
#Ans 6. 

library(ggplot2)
Dataset.numeric<- Dataset[,sapply(ds2_1, is.numeric)]
for (i in Dataset.numeric)
{
  qplot(i,geom = "histogram")
}
#Ans7 
library(readr)
Dataset2<- read_csv(readr_example("Data set - 2.2.csv"),col_types = cols(`First FD Date` = col_date(),`Last FD Date` = col_date(), `FD termination date` = col_date() )) 
View(Dataset2)
attach(Dataset2)

a <- as.Date(Dataset2$`First FD Date`,format = "%m/%d/%Y")
b <- as.Date(Dataset2$`First FD Date`,format = "%m-%d-%Y")
a[is.na(a)] <- b[!is.na(b)] 
Dataset2$`First FD Date` <- a 
Dataset2$`First FD Date`


#Question 8
g <- Dataset$`Date of Birth`
h <- as.Date(g, "%d-%b-%y",origin = "1899-12-30")
for (i in h) {
  if (year(i) > 2021){
    format(h,"19%y-%m-%d", origin = "1899-12-30" )
  } else{
    format(h,origin = "1899-12-30")
  }
}
Dataset2$`Date of Birth` <- h
Dataset2$`Date of Birth`

#Question 9
class(Dataset2$`First FD Date`)
class(Dataset2$`Last FD Date`)
class(Dataset2$`FD termination date`)
class(Dataset2$`Date of Birth`)



