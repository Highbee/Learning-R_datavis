#HANDLING MISSING DATA
#three approaches used are:
#feature selection
#listwise deletion
#imputation
library('ggplot2')
View(msleep)

#1)
#In 'feature selection' you delete variable that 
#contains too many miss vaues
#what is the proportion of missing data for each variable?
data(msleep, package = "ggplot2")
pctmiss <- colSums(is.na(msleep))/nrow(msleep)
round(pctmiss,2)
#sixty-one percent of the sleep_cycle values are mission. You may decide to drop it


#2)
#list wise deletion
#here, observations with missing data are deleted list wise
new_data<- select(msleep, genus, vore, conservation)
new_data<- na.omit(new_data)
View(new_data)
?colSums


#3)see R file missing_data_imputation.R
