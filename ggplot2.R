library(dplyr)
data(CPS85, package = 'mosaicData')
plot_data=filter(CPS85, wage<40)

ggplot(data=plot_data,
  mapping= aes(
    x=exper,
    y=wage
  )
  )+geom_point()


#modifying data point via geom_point parameters
#alpha dictates transparency
data(CPS85, package = 'mosaicData')
plot_data=filter(CPS85, wage<40)

ggplot(data=plot_data,
  mapping= aes(
    x=exper,
    y=wage
  )
  )+geom_point( color="cornflowerblue",
                alpha=0.77,
                size=3
                )


#Adding line of best fit using geom_smooth()
data(CPS85, package = 'mosaicData')
plot_data=filter(CPS85, wage<40)

ggplot(data=plot_data,
  mapping= aes(
    x=exper,
    y=wage
  )
  )+geom_point( color="cornflowerblue",
                alpha=0.77,
                size=3
                )+geom_smooth()



#Adding line of best fit using geom_smooth() and showing method
data(CPS85, package = 'mosaicData')
plot_data=filter(CPS85, wage<40)

ggplot(data=plot_data,
  mapping= aes(
    x=exper,
    y=wage
  )
  )+geom_point( color="cornflowerblue",
                alpha=0.77,
                size=3
                )+geom_smooth(method = 'lm')




#MAPPING variables to other characteristics
#In addition to mapping variables to x and y axes, they can be mapped to color,
#size, shape, transparency and and other visual xtics of geometric object
#this allows group of observation to be superimposed on the same graph
#please note that the color parameter in geom_point would overwrite this if specify
data(CPS85, package = 'mosaicData')
plot_data=filter(CPS85, wage<40)

ggplot(data=plot_data,
  mapping= aes(
    x=exper,
    y=wage,
    color=sex,
    shape=hispanic
  )
  )+geom_point(
                alpha=0.77,
                size=3
                )+geom_smooth(method = 'lm',
                              se=FALSE
                              )+labs(x="Experience(in years)", y="wages in USD")

#the se= FALSE will suppress the confidence interval
data(CPS85, package = 'mosaicData')
plot_data=filter(CPS85, wage<40)

ggplot(data=plot_data,
  mapping= aes(
    x=exper,
    y=wage,
    color=sex,
  )
  )+geom_point(
                alpha=0.77,
                size=3
                )+geom_smooth(method = 'lm',
                              se=FALSE
                              )+labs(x="Experience(in years)", y="wages in USD")