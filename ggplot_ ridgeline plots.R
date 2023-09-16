# Ridgeline plots are also called joyplot
# They are like kernel density plot with vertical faceting
# they display distribution of quantitative variable for several group
#therefore, they relatively take up less space
# to create ridgeline, you need ggridges package
library(ggplot2)
library(ggridges)
ggplot(
  mpg,
  aes(
    x=cty,
    y=class,
    fill=class
  )
)+
  geom_density_ridges()+
  theme_ridges()+
  labs(title = "Highway mileage by auto class")+
  theme(legend.position='none')