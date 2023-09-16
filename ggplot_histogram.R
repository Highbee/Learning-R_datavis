library(ggplot2)
data(Marriage, package="mosaicData")
plot_data=Marriage

ggplot(
  data=plot_data,
  
  mapping = aes(
    x=age
    
  )
  )+
  geom_histogram(
    color='white',
    fill="cornflowerblue"
  )+
  labs(title="Participants by age",
       x="Age")


#setting number of bins the numbers are divided into

ggplot(
  data=plot_data,
  
  mapping = aes(
    x=age
    
  )
  )+
  geom_histogram(
    color='white',
    fill="cornflowerblue",
    bins = 20
  )+
  labs(title="Participants by age",
       x="Age")


#setting width of bars using the binwidth(_)

ggplot(
  data=plot_data,
  
  mapping = aes(
    x=age
    
  )
  )+
  geom_histogram(
    color='white',
    fill="cornflowerblue",
    bins = 20,
    binwidth = 5
  )+
  labs(title="Participants by age",
       subtitle = "binwidth = 5 years",
       x="Age")+
  scale_x_continuous(breaks = seq(0, 100, 5 ))
View(plot_data)