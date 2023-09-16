library(ggplot2)
data(mpg, package = 'ggplot2')

plot_data<-mpg


ggplot(
  data=plot_data,
  mapping=aes(
    x=class,
    fill=drv
  )
)+
  geom_bar()
  #geom_bar(position = 'stack')
