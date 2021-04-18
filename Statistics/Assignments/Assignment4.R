# Data 
# Ques1 - Are agreeing with the statement "Men should have more right to a job than women" and 
#having a university degree or higher disjoint events?
Prob_of_A = 0.362
Prob_of_B = 0.138
Prob_of_both = 0.036 
# i.e they have intersection value therefore , they are not mutually exclusive 


#Ques2 .Draw a Venn diagram summarizing the variables and their associated probabilities.

install.packages("ggvenn")
library(VennDiagram)
library(grid)
grid.newpage()
Prob_of_A = 0.362
Prob_of_B = 0.138
Prob_of_both = 0.036

venn.plot <- draw.pairwise.venn(Prob_of_A,Prob_of_B,Prob_of_both,c("Agreeing ", "University Degree"), fill = c("red","blue"))
grid.draw(venn.plot)


#Ques3. What is the probability that a randomly drawn person has a university degree or higher or agrees with the statement 
#about men having more right to a job than women?
Prob_of_A = 0.362
Prob_of_B = 0.138
Prob_of_both = 0.036 

Prob_of_inter = 0.362+0.138-0.036
               
print(Prob_of_inter)

#Ques4 . What percent of the world population do not have a university degree and 
#disagree with the statement about men having more right to a job than women?      
 
Prob_of_not = 1- (0.362+0.138-0.036)
 print(Prob_of_not)
 
 
 #Ques 5 .Does it appear that the event that someone agrees with the statement is independent of the event 
 #that they have a university degree or higher?
Prob_of_both != Prob_of_A * Prob_of_B
#Prob_of_A * Prob_of_B = 0.362*0.138

#Ques 6 . What is the probability that at least 1 in 5 randomly selected people to agree
#with the statement about men having more right to a job than women?
1 - (1-0.362)^5

#Data 2
#Ques 2.1 If an individual from Swaziland has tested positive, what is the probability that he carries HIV?
Prob_of_Hiv = 0.997
Prob_of_notHiv = 0.926
Prob_of_tot = 0.259

Prob_HIV = (0.259*0.997)/((0.259*0.997)+(0.741*0.074))
Prob_HIV


