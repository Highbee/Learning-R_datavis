library(dplyr)
#assume you want to complete the following tasks
new_data<-filter(starwars, gender=='feminine')
new_data<-group_by(new_data,species)
new_data<-summarize(new_data,
                    mean_height=mean(height, na.rm=TRUE)
                    )

View(new_data)


#you can do same succinctly using pipes
#under the hood, the result of the expression is passed
#as the first argument in the next
new_data<- starwars %>% 
  filter(gender=='feminine')%>%
  group_by(species)%>%
  summarize(mean_height=mean(height, na.rm=TRUE))

View(new_data)


rm(list=objects(all.names=TRUE))