#library("dplyr","ggplot2")
data(CPS85, package='mosaicData')
plot_data = filter(CPS85, wage < 45)

ggplot(data=plot_data,
       mapping=aes(
         x=exper,
         y=wage,
         color=sex
       ))+geom_point(alpha=0.7, size=3)+geom_smooth(method='lm')+
  scale_x_continuous(breaks=seq(0, 60, 10 ))+
  scale_y_continuous(breaks=seq(0,40, 5), label= scales::dollar)+
  scale_color_manual(values=c("indianred3", 'cornflowerblue'))+
  labs(title="Relationship between experience and wages",
       subtitle = 'this is the subtitle',
       caption = "source: https//mosaic_data",
       color="Gender",
       )+
  facet_wrap(vars(sector))