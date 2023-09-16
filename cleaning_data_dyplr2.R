library(dplyr)
new_data<-mutate(starwars,
                 heightcat=ifelse(
                   height>180,
                   "tall",
                   "short"
                 )
                 )



new_data<-mutate(starwars,
                 eye_color=ifelse(
                   eye_color %in% c('blue', 'brown', 'black'),
                   eye_color, 'other'
                   
                 ))
View(new_data)


#set heights greater than 200 or less than 75 to missing
new_data<- mutate(starwars,
                  height= ifelse(
                    height<75| height>200,
                    NA,
                    height
                  )
                  )