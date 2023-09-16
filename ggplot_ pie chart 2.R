library(ggplot2)
library(dplyr)
df<- data.frame(
  value=c(10, 23, 15, 18),
  group=paste0("G", 1:4)
  
  )
df<- mutate(df, percent=value/sum(value))
ggplot(
  data=df,
  mapping = aes(
    x="",
    y=value, 
    fill=group
  )
)+
  geom_col(color='black')+
  coord_polar(theta="y")

View(df)
# A pie chart in ggplot is a bar plot plus a "polar coordinate.
#You can use geom_bar or geom_col and theta="y" inside coord_polar
#the arguments for polar coordinates and what they do:
#theta: maps angle to x or y, in this case we already map
#our values to y so we set theta to y
#note: unlike geom_bar, we must spell out the x and y values when using geom_col

#start: offset of starting point from 12 o'clock in radians
#offset is applied clockwise or anticlockwise depending on direction
#direction 1: clockwise, -1: anticlockwise