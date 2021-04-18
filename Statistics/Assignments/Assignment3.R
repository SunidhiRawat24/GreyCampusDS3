# Ques 1  Keep rows containing country information and remove the rest of the rows. Apart from the country, 
          #you should not be having any other row. Move on to the next step only after finishing this.

install.packages(tidyverse)
library (tidyverse)
dataset<- read.csv("C:/Users/hp/Downloads/COVID19.csv")
view(dataset)
dataset_new <- dataset %>%
  slice(9:n())
dataset_new

#Ques2 Calculate the missing percentage of each column using a function. 
        #If any column has missing data more than 5%, please remove it. (Do not try this for rows)
pmiss <- function(x)
{
  sum(is.na(x)/length(x))*100
}
per_col <- apply (dataset_new,2,pmiss)
per_col = which(per_col>10)
per_col

dataset_new2<- dataset_new[-c(per_col)]
str(dataset_new2)


#Give a better column name after cleaning your data.

#Ques 3.1 Create plots for total cases, total death, and total recovery. Explain with a figure for each.

install.packages(tm)
library(ggplot2)
as.String(dataset_new2$Country.Other)
as.String(dataset_new2$TotalDeaths)
as.String(dataset_new2$TotalRecovered)
class(dataset_new2$Country.Other)
class(dataset_new2$TotalDeaths)
class(dataset_new2$TotalRecovered)

ggplot(dataset_new2, aes(x=dataset_new2$Country, y=dataset_new2$TotalCases)) +
  geom_bar(position = "stack", stat= "identity")

ggplot(dataset_new2, aes(x=dataset_new2$Country, y=dataset_new2$TotalDeaths)) +
  geom_bar(position  = "stack" ,stat="identity")

ggplot(dataset_new2, aes(x=dataset_new2$Country, y=dataset_new2$TotalRecovered)) +
  geom_bar(position = "stack" , stat="identity")


#Ques 3.2 Create a plot to examine the correlation between total cases and total population. 
#Explain if there is any correlation between total cases and total population.

plot(dataset_new2$TotalCases, dataset_new2$Population, type = "b")  

cor(dataset_new2$TotalCases, dataset_new2$Population, method = c("pearson"))



# Ques 3.7. Compare Tot Cases/1M pop by continent, and explain your result. 
 
 ggplot(dataset_new2, aes(x= Continent, y=TotCasesPerMilPop, fill=Continent)) +
  geom_bar(position = "stack", stat = "identity")
 
 #Ques3. 8 . Compare Deaths/1M pop by continent, and explain your result.

 ggplot(dataset_new2, aes(x= Continent, y=DeathsPerMilPop, fill=Continent)) +
   geom_bar(position ="stack", stat = "identity")

#Ques 3.9 Compare your COVID19 test results by continent? 
 #There are two columns total test vs test/M. Choose appropriate column. 
 dataset_new2$Country[which.max(dataset_new2$TestsPerMilPop)]
 dataset_new2$Country[which.min(dataset_new2$TestsPerMilPop)]

 #Ques 3.10 Compare your COVID19 test results by continent? 
 #There are two columns total test vs test/M. Choose appropriate column. 
 
 ggplot (aes (x = Testpermillionpopulation, y = Continent)) +
   
#Ques 3.11 Check if Tests/1M pop is skewed or normally distributed.
   dataset_new2 %>%
   hist(dataset_new2$Tests.1M.pop)
 summary (dataset_new2$Tests.1M.pop)
 
   
 
 

