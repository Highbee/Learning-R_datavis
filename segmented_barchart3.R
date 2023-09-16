library(ggplot2)

library(dplyr)
plot_data<-mpg%>%
  group_by(class, drv)%>%
  summarize(n=n())%>%
  mutate(pct=n/sum(n),
         lbl=scales::percent(pct))
 
# View(plot_data)
ggplot(
  plot_data,
  aes(x=factor(class,
               levels = c(
                 "2seater", 
                 "subcompact",
                 "compact",
                 "midsize",
                 "minivan",
                 "suv",
                 "pickup"
               )
               ),
      y=pct,
      # fill=drv
      fill=factor(
        drv,
        levels = c("f", "r", "4"),
        labels = c(
          "front-wheel",
          "rear-wheel",
          "4-wheel"
        )
      )

  )
)+
  geom_bar(
    stat="identity",
    position = "fill")+
  labs(
    x="Class",
    fill="drive type",
    y="Percent",
    title="Automobile Drive by Class"
  )+
  geom_text(aes(label=lbl), size=3, position = position_stack(vjust=0.5) )+
  scale_fill_brewer(palette = "Set2")+
  theme_minimal()