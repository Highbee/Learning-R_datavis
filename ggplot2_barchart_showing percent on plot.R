library(ggplot2)
library(dplyr)
data(Marriage, package = "mosaicData")
plot_data<-Marriage %>% count(race)%>%
  mutate(pct = n/sum(n),)
         #pct_label=paste(round(pct*100), "%"))
#plot the bars as percentages,
#in descending order with bar labels
ggplot(plot_data,
       aes(
         x=reorder(race, -pct),
         y=pct
         ))+
  geom_bar(stat="identity",
           fill='indianred3',
           color='black')+
  scale_y_continuous(labels= scales::percent)+
  labs(x="race",
       y="percent",
       title="Participants by race")
