library(ggplot2)
#View(count(mpg, class))
ggplot(
  data = mpg,
  aes(
    x=factor(
      class,
      levels = c("2seater",
                 'subcompact',
                 'compact',
                 'midsize',
                 'minivan',
                 'suv',
                 'pickup'
                    
                             )
                  ),
    fill=factor(
      drv,
      levels = c("f", "r", "4"),
      labels = c("front-wheel",
                 'rear-wheel',
                 '4-wheel'
                 )
      )
    ))+
  geom_bar(
    position = 'fill'
  )+
  scale_y_continuous(breaks = seq(0, 1, 0.2),
                     labels=scales::percent)+
  scale_fill_brewer(palette = "Set2")+
  labs(
    y="Percent",
    fill="Drive Train",
    x="Class",
    title = "Automobile Drive by Class")+
  theme_minimal()
  