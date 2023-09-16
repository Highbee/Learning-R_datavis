library(dplyr)
library(ggplot2)
data(Marriage, package = 'mosaicData')
plot_data<-Marriage %>%
  count(race) %>%
  arrange(desc(race)) %>%
  mutate(proportion=round( (n/sum(n)*100), 1), 
         lab.ypos=cumsum(proportion)- 0.5 *proportion )

plot_data$label<- paste0(plot_data$race, '\n', round(plot_data$proportion), "%")
ggplot(
  data=plot_data,
  mapping=aes(
    x= "",
    y=proportion,
    fill=race
    
  )
)+
  geom_bar(width=1, 
           stat='identity', 
           color='black'
           
           )+
  geom_text(aes(y=lab.ypos, label=label),
            color='black')+
  coord_polar('y',
              start=0,
              direction=-1)+
  theme_void()+
  theme(legend.position = "FALSE")+
  labs(title = "Participants by race")

  

View(plot_data)