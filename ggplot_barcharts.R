library('ggplot2', 'dplyr')



data(Marriage, package = 'mosaicData')
plot_data<-Marriage

ggplot(data=Marriage,
       mapping=aes(
         x=race,
         y= ..count../sum(..count..)
       ))+
  geom_bar()+
  labs(x="Race"
       , y="Percent",
       title="Participants by race")+
  scale_y_continuous(labels=scales::percent)
#the scales::percent handles multiplication by hundred
View(Marriage)

#in the coded, "scales::percent" means from scales package
#..use the percent symbol
