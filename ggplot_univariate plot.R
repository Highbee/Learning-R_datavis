library(ggplot2)
data(Marriage, package = "mosaicData")
#plot the distribution of race
ggplot(Marriage, aes(x=race))+
  geom_bar(fill='cornflowerblue',
           color='red'
           )+
  labs(x="Race",
       y="Frequency",
       title = "Participants by race"
       )
#color determines the border around the bar