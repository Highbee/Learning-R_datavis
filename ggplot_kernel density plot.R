library(ggplot2)
data(Marriage, package = "mosaicData")
ggplot(Marriage,
       aes(
         x=age
       )
       )+
  geom_density(
    fill='indianred3'
  )+
  labs(title="Participants by age",
       subtitle = "kernel density plot")









#setting smoothing parameter using bw()
#use bw.nrd() to find the default value for a variable. The higher the value the higher
#the smoothness and vice versa
bw.nrd(Marriage$age)
ggplot(Marriage,
       aes(
         x=age
       )
       )+
  geom_density(
    fill='indianred3',
    #setting the smoothness to 1 to have less smoothening and more details
    bw=1
  )+
  labs(title="Participants by age",
       subtitle = "kernel density plot")+