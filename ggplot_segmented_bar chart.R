library(ggplot2)
ggplot(mpg,
       aes(
         x=class,
         fill=drv
        
       )
       )+
  geom_bar(position='fill')+
  labs(y='proportions')+
  scale_y_continuous(labels = scales::percent)