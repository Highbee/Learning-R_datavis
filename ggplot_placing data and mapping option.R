library('dplyr', 'ggplot2')
#you could place mapping options in geoms_ functions
# in that case, they only apply to that specific geom
data(CPS85, package="mosaicData")
plot_data<filter(CPS85, wage < 40)
ggplot(plot_data,
       aes(x=exper,
           y=wage
           ))+geom_point(aes(color=sex),
                         alpha=.7, size=3)+
  geom_smooth(method='lm',
              formula = y ~ poly(x,2),
              se=FALSE,
              linewidth=1.5)
#here the sex was only colored to show differences, but it was not
#treated as a separate data

#"Since the sex to color mapping only appears in the geom_point function, it is only used there. A single
#trend line is created for all observations."

#On the other hand
library('dplyr', 'ggplot2')
data(CPS85, package="mosaicData")
plot_data<filter(CPS85, wage < 40)
ggplot(plot_data,
       aes(x=exper,
           y=wage,
           color=sex,
           
       ))+geom_point(
                     alpha=.7, size=3)+
  geom_smooth(method='lm', formula = y ~ poly(x,2), 
              se=FALSE,
              linewidth=1.5)
#here the sex was only colored to show differences, but it was not
#treated as a separate data
