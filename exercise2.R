library(ggplot2)
library(dplyr)
library(treemapify)
data(Marriage, package="mosaicData")
plot_data=Marriage %>% count(sign)

ggplot(
  data=plot_data,
  aes(
    
    
    fill=sign,
    area=n,
    label=sign
  )
  )+
  geom_treemap(
  )+
  geom_treemap_text(colour='white')+
  theme(
    legend.position = 'none'
  )