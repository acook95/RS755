library(readxl)
DataEx2 <- read_excel("DataEx2.xlsx")
View(DataEx2)
names(DataEx2)
phq9_Jorge<-DataEx2[,3:11]
View(phq9_Jorge)
an2<-alpha(phq9_Jorge)
View(an2)
#Check on this results:
alpha(phq9_Jorge, check.keys = TRUE)
an1B <-alpha(phq9_A, check.keys = TRUE)
# See http://personality-project.org/r/psych/
## And see the manual.