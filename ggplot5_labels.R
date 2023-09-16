library("dplyr", "ggplot2")
data(CPS85, package = 'mosaicData')
#graphs should be easy to interpret and informative
#these are the purpose of labels
#the "labs" function helps in adding and formating labels
plot_data<-filter(CPS85, wage < 40)
ggplot(data=plot_data,
       mapping=aes(
         x=exper,
         y=wage,
         color=sex,
         
       ))+
geom_point()+
geom_smooth(method='lm',)+
scale_x_continuous(breaks = seq(0, 60, 10))+
scale_y_continuous(breaks = seq(0, 30, 5),
label=scales:: dollar)+
facet_wrap(vars(sector))+
labs(
  title = "Relationship between wages and experience",
  subtitle = "Current Population Survey",
  caption = 'Source: http://mosaic-web.org/',
  x="Years of experience",
  y="Hourly wage",
  color="Gender"
)