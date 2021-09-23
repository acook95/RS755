#Where is your working directory?
getwd()

#Go to Session > Choose working directory > Choose directory
#setwd("~/Documents/T/Trabajo/PsychometricsBU/Fall2021/Data")

# Save the example dataset in your working directory

# Import the example dataset: File > Import DataSet > From Excel
# Import two files: 
#     ExData_Depression.xlsx, and 
#     DataEx2.xlsx

library(readxl)
DataEx2 <- read_excel("DataEx2.xlsx")
ExData_Depression <- read_excel("ExData_Depression.xlsx")

# In the RStudio menu go to Code->Soft Wrap long lines, to make it easier reading the code below.

#View your data
View(ExData_Depression)
View(DataEx2)

# This data includes variables other than items (Person, Gender, SES). Only item data must be entered in the analysis. You must select the column corresponding to item-level data.

#To select columns, you must know first which columns to select.. Let's start with the first file:
names(ExData_Depression)

# For the data set "ExData_Depression", you must select columns 4 to 12 and create an object to store the item information. 

#The name of the object i this file is phq9_A; feel free to name it as it's convenient for you

phq9_A<-ExData_Depression[,4:12]

#NOTE: Please note that the left arrow "<-" is the operator we use in R to assign an object or value to a variable or object. The line above assigns a part of a data set to the variable "phq_9A"  

#You could have done this by preparing the file in excel directly, but now you know how to select columns in a dataset in R


#Install required packages
install.packages("psych")
#Load the package
library(psych)

#Run the reliability analysis
#Option A
alpha(phq9_A)
an1 <-alpha(phq9_A)
#Option B
alpha(phq9_A, check.keys = TRUE)

# Make an object and store the reliability results in that object:
an1 <-alpha(phq9_A)
# View the object
View(an1)

#Next steps:
# 1. Do the Reliability_Exercise1.
# 2. Compare the results from exercise 1 and the analysis in an1.

q1_9 <- DataEx2[,3:11]
alpha(q1_9)

