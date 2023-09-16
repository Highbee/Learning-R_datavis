data(CPS85, package="mosaicData")
library('ggplot2', "dplyr")

plot_data<-filter(CPS85, wage < 40)

ggplot(
  data=plot_data,
  mapping=aes(
    x=exper,
    y=wage,
    color=sex,
  )
)+geom_point(alpha=0.7)+geom_smooth(method='lm', se=FALSE)+
  scale_x_continuous(breaks=seq(0, 60, 10))+
  scale_y_continuous(breaks = seq(0, 30, 5),
                     label=scales::dollar
                     )+
  scale_color_manual(values = c("indianred3",
                                "cornflowerblue"
                                ))+
facet_wrap(vars(sector))
View(plot_data)
