library(ggplot2)
data(Salaries, package = "carData")

plot_data<- Salaries

ggplot(
  data=plot_data,
  mapping = aes(
    x=factor(rank,
           labels=c(
             "Assistant Professor",
             "Associate Professor",
             "Professor"
           )
           
           
           ),
    y=salary
  )
)+
  geom_violin()