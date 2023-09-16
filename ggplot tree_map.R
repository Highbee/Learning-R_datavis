library(ggplot2)
library(dplyr)
library(treemapify)
data(Marriage, package = 'mosaicData')
plot_data<-Marriage%>% count(officialTitle)
ggplot(
  data=plot_data,
  mapping = aes(
    fill=officialTitle,
    area=n,
    label=officialTitle
  )
)+
  geom_treemap()+
  geom_treemap_text(colour="white",place = "center")+
  labs(title = "Marriages by officiate")+
  theme(legend.position = "None")

