#load data
data(CPS85, package = "mosaicData")
CPS85
View(CPS85)
#specify the dataset and mapping
library('ggplot2')
ggplot(data=CPS85,
       mapping=aes(x=exper, y= wage)) + geom_point()

#if geoms are not specified blank graph will be generated
#geoms are geometrics objects
#geom_point(generates scatter plot)
#IMPORTANT; functions in ggplot are chained together using + sign