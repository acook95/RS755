#Exercise
#Import and view the second data set. Select the corresponding columns and store them in an object. The perform the reliability analysis and store it in an object named "an2"
library(readxl)
DataEx2 <- read_excel("DataEx2.xlsx")
names(DataEx2)
phq9_Anna <- DataEx2[,3:11]
an2 <- alpha(phq9_Anna, check.keys = TRUE)

an2

#Steps:
# 1. Import the file
# 2. View the columns using the names function
# 3. Select the columns and create the object. Name it as phq9_"Yourname"
# 4. Important: store/do your reliability analysis in an object named "an2".

.





