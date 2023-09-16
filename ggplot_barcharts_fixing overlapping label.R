library('dplyr', 'ggplot2')
data(Marriage, package = 'mosaicData')
plot_data <- Marriage
ggplot(
  data=plot_data,
  aes(x=officialTitle)
)+
  geom_bar()+
  labs(x="Officiate",
       y="Frequency",
       title = "Marriage by Officiate")
  

#in this case you could flip the x and y axes

#horizontal bar chart
ggplot(plot_data, aes(
  x=officialTitle,
))+geom_bar()+
  labs(x="",
       y="Frequency",
       title="Marriage by the officiates")+
  coord_flip()



#Alternatively you could rotate the axis label, 
ggplot(plot_data, aes(
  x=officialTitle,
))+geom_bar()+
  labs(x="",
       y="Frequency",
       title="Marriage by the officiates")+
  coord_flip()+
  theme(axis.text.y = element_text(angle=45, hjust = 1))


?paste0


#lastly, you could use '\n' to break text

#creat label with broken text
my_labels<-paste0(c("","\n"),
                  levels(Marriage$officialTitle))
ggplot(Marriage, aes(
  x=factor(officialTitle,
  labels=my_labels)
))+ geom_bar()+
  labs(x="",
       y="Frequency",
       title="Marriage by the officiates")
  
  