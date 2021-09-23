#Where is your working directory?
getwd()

#Go to Session > Choose working directory > Choose directory
setwd("~/Documents/T/Trabajo/PsychometricsBU/Fall2021/Data")

# Save the example dataset in your working directory
# Import the example dataset: File > Import DataSet > From Excel
library(readxl)
ExData_Depression <- read_excel("ExData_Depression.xlsx")

#View your data
View(ExData_Depression)

#To select columns, you must know first which colummns:
names(ExData_Depression)

#You must select columns 4 to 12 and create an object to store that. The name of the object is phq9; feel free to name it as it's convenient for you
phq9<-ExData_Depression[,4:12]

#Check dimensions
dim(phq9)

#You could have done this by preparing the file in excel directly



#Install required packages
install.packages("psych")
library(psych)


#Run the reliability analysis
#Option A
alpha(phq9)
#Option B
alpha(phq9, check.keys = TRUE)

install.packages("GPArotation")
library(GPArotation)
