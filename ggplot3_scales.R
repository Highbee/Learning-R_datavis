#scales control how variables are mapped to visual characteristics of plot
#scale_


library('ggplot2')
data(CPS85, package = 'mosaicData')
plot_data=filter(CPS85, wage<40)
View(plot_data)
ggplot(data =plot_data,
       mapping = aes(
         x=exper,
         y=wage,
         color=sex,
         
       )
       )+geom_point(
         alpha=.7,
         size=3
       )+geom_smooth(method='lm', 
                     linewidth=1.5,
                     se=FALSE)+scale_x_continuous(breaks = seq(0, 60, 10))+
  scale_y_continuous(breaks = seq(0, 30, 5),
                     label=scales::dollar)+
  scale_color_manual(values = c("indianred3", "cornflowerblue"))
