data(CPS85, package="mosaicData")
library('dplyr', 'ggplot2')
plot_data<-CPS85[CPS85$wage < 40,]

#assign a plot/graph to a graph
my_plot<-ggplot(plot_data,
                aes(x=exper,
                    y=wage)
                )+
  geom_point()

#print the graph
my_plot

#make the graph bigger and blue
my_plot=my_plot+geom_point(size=4, color='blue')

#print
my_plot

#print the graph with line of best fit but to save the changes
my_plot+ geom_smooth(method = 'lm', se=FALSE)+
  labs(title = "Mildly interesting graph")


#print the graph with black and white theme but don't save that
my_plot + theme_bw()