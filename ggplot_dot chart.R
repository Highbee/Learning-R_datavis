library(ggplot2)
data(Marriage, package = "mosaicData")

ggplot(data=Marriage,
       aes(
         x=age
       ))+
  geom_dotplot(
    fill='indianred3',
    color='indianred3'
  )