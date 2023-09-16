# when one of the two variable represents time,
# a line plot is an effective method of displaying
# the relationship

library(dplyr)
library(ggplot2)
library(ggpubr)
data(gapminder, package="gapminder")

plot_data<-filter(gapminder, country=="United States")
ggplot(plot_data,
       aes(
         x=year,
         y=lifeExp
       )
       )+
  geom_line(size=1.5,
            color='indianred3')
# View(plot_data)


#You could also show data points
ggplot(plot_data,
       aes(
         x=year,
         y=lifeExp
       )
       )+
  geom_line(size=1.5,
            color='lightgrey')+
  geom_point(size=3,
             color="lightgrey")+
  geom_smooth(method="lm", se=FALSE)+
  labs(
    x="Year",
    y="Life Expectancy (years)",
    title="Life expectancy changes over time",
    subtitle = "United States (1952-2007)",
    caption = "Source:http://www.gapminder.org/data"
  )+
    # let show the equation of the graph
    stat_regline_equation(
      label.x=1970,
      label.y=77.5
    )+
    stat_cor(aes(label=..rr.label..), label.x=1990, label.y = 77.5)
View(plot_data)