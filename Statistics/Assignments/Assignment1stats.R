#Ques 1. What is the basic difference and similarity between a vector and a matrix?
#Ans1.  Differences - 
#I.	Vector has single index , whereas matrix will has two indices .
#II.	Vectors are one dimensional , whereas matrices are two dimensional.
#Similarities -  Both vector and matrix are homogenous it contains same data types. 


#Ques 2. What is the basic difference and similarities in data frame and matrix ?
 # Ans2. Differences - 
#I.	Matrix has fixed numbers of rows and columns , data frame has variable number of rows and columns.
#II.	The data stored in matrix can be only of same data type , whereas data stored in data frame can be numeric , logical , character type.
#III.	Matrix is homogeneous , whereas data frames is heterogeneous . 
#Similarities -  Both are two dimensional data structure of R programming

# Ques 3. Create a vector using (15, TRUE, "World").
#Ans3. It will give the following result- x = 
 # chr[1:3] "15", "TRUE", "World" 
#because of the explicit coercion the vector will convert the data type into character data type . 
  
#Ques4 .  John's scores in the final semester for the three subjects are 95, 91 and 88. The subjects are Statistics , Linear Algebra and Calculus. Using these create a vector based on their subjects . 
 # Ans4 .
Scores <- c(95,91,88)
names(Scores) <- c("Statistics","Linear Algebra","Calculus")
 Scores
 
 # Ques5. Please check the types (character or numeric) of the vector 
# you created.
#Ans 5. 
# class(Scores)   It is of numeric type .
 
# Ques 6. You have three students in your class (choose any name you want). 
 #You must create a matrix using their score in the above mentioned subjects 
# question 4 , Student 1 (95, 91, and 88), Student 2(96, 94, and 97), 
 #Student 3(88, 98, and 85). 
 #Create a matrix and label column and row names.
 #Ans 6 . 
 Marks <- matrix(c(95, 91, 88 ,96, 94, 97 ,88, 98,  85 ) , nrow = 3 , 
                 ncol = 3 ,  byrow = TRUE)
 rownames(Marks) <- c("Student 1" , "Student 2" , "Student 3")
 colnames(Marks) <- c("Statistics", "Linear Algebra", "Calculus")
 View(Marks)
 
# Ques6 .Convert the created matrix into a data frame.
# Ans 6. 
 dataframe <- data.frame(Marks)
 print(dataframe)
 
 #Ques 7. Create three vectors using five countries (your choice) from the following 
 #website. The first vector should be country names, the second vector should
 #be the total number of cases, and the third vector should contain the total
 #number of deaths. Create a data frame using these vectors. 
 
 #Ans 7.
 country<- c("USA","Brazil","India","Spain","Turkey")
 tot_cases <-  c(30521774 , 11998233 , 11646081 , 3228803 , 3035338)
 tot_deaths <- c(555314, 294115 , 160003 , 73543 , 30178 )
 
 D <- data.frame(country , tot_cases , tot_deaths)
 print(D)
 
 #Ques 8. Please read the mtcars data set from R. It is an built-in data set. 
 #Please check the structure of the data set. If required, please convert the data into their appropriate data types (character, logical, factor etc ). Save your results as a new data frame using a new name. 
 
 
 #Ans 8 . 
 
 data(mtcars)
 str(mtcars)
 newmtcars <- within(mtcars,{
   vs <- as.logical(vs)
   am <- as.factor(am)
   cyl <- as.logical(cyl)
   gear <- ordered(gear)
   carb <- as.factor(carb)
 })
 str(newmtcars)
 newmtcars
 
 
 
 
 
  
