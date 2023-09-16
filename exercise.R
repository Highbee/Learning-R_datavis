library(ggplot2)
library(dplyr)
library(treemapify)
data(Marriage, package="mosaicData")
plot_data=Marriage %>% count(sign)
plot_data=mutate(plot_data, proportion= 
   (n/sum(n)  ))

View(Marriage)
ggplot(
  data=plot_data,
  mapping=aes(
    y=proportion,
    x=sign,
    
    
  )
)+
  geom_bar(stat='identity',
           fill='indianred3')+
  scale_y_continuous(labels = scales::percent)+
  geom_text(aes(
    label=paste0(
      round((proportion*100),0), "%"
      )
    ), vjust=-0.25
    )+
  theme(axis.text.x = element_text(angle = 45))
  
  
  
  

