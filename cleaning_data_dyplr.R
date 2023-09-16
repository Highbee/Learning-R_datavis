
library(dplyr)
new_data<-starwars

#select columns from data set
new_data<-select(starwars)
new_data<-select(starwars, name, height, gender)

#select columns from and to
new_data<-select(starwars, name, mass:species)

#keep all variables except birth year and gender
new_data<- select(starwars, -birth_year, -gender)



#SELECTING OBSERVATION
new_data<-filter(starwars,
                 gender=="feminine"&
                 homeworld=="Alderaan"
                 )


new_data<-filter(starwars,
                 homeworld== "Alderaan"|
                   homeworld=="Coruscant"|
                   homeworld=="Endor"
                 )

#Succint selection
new_data<-filter(starwars,
                 homeworld %in% c('Alderaan', 'Coruscant', 'Endor')
                 
                 )

View(new_data)

