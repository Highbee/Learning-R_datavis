#3)Imputation
#this approach involves replacing missing values with
#reasonable guesses about what the values would have been.
#VIM, mice, Amelia and missForest can be used
#it uses 'k' most similar cases not having missing values.
#if the missing values is numeric, the mean of those k cases is used
#if th missing value is categorical, the frequent value from k cases is used
#this method can lead to biasedness

library(VIM)
raw<-(msleep)
new_data<-kNN(msleep, k=5)
View(raw)
View(new_data)