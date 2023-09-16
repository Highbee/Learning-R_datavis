library(dplyr)
library(ggplot2)
data("Marriage", package = "mosaicData")
plot_data<-Marriage %>%
  count(race)
ggplot(plot_data, aes(
  x = reorder(race, n),
  #use reorder(race, -n) to sort in descending order
  y = n))+
  geom_bar(stat = "identity",
           fill='cornflowerblue', color='black')+
  labs(title = "Participants by race",
       x="Race",
       y="Frequency")


#labelling bar

ggplot(plot_data, aes(
  x=reorder(race, -n),
  y=n
))+
  geom_bar(stat = "identity")+
  labs(x="Race",
       y="Frequency",
       title = "Participants by race")+
  geom_text(aes(label=n), vjust=-0.5)+
  theme(panel.grid.minor = element_blank(),
        panel.grid.major = element_blank())