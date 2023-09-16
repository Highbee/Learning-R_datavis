library("dplyr", 'ggplot2')
data(Marriage, package = 'mosaicData')
plot_data<-Marriage
#plot_data<-count(Marriage, officialTitle)

View(plot_data)
ggplot(plot_data, aes(
  x=officialTitle,
  y=..count../sum(..count..)
  
))+
  geom_bar()+
  scale_y_continuous(labels=scales::percent)+
  labs(title = "Participants by race",
       x="Race",
       y="Percent",
       )