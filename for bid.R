library(ggplot2)
x= c(-4, -3, -2, -1, 0, 1, 2, 3, 4)
y= c(0, 2.65, 3.46, 3.87, 4, 3.87, 3.46, 2.65, 0)

x= c(-4, -3, -2, -1, 0, 1, 2, 3, 4, -4, -3, -2, -1, 0, 1, 2, 3, 4)
y= c(0, 2.65, 3.46, 3.87, 4, 3.87, 3.46, 2.65, 0,0, -2.65, -3.46, -3.87, -4, -3.87, -3.46, -2.65, 0)


gender=c('m', 'f')
gender=sample(gender, 9, replace = TRUE)
gender
plot_data<-data.frame(x,y, gender)
View(plot_data)
ggplot(data=plot_data,
       mapping=aes(
         x=x,
         y=y,
         color=gender
       ))+
  geom_point(shape="diamond", size=8)+
  theme_void()+
  
  coord_fixed()+
  geom_vline(xintercept = 0)+
  geom_hline(yintercept = 0)
#  geom_line(size=0.5)






ggplot(data=plot_data,
       mapping=aes(x=x,
                   y=y,))+
  geom_point()+
  theme_minimal()+
  ?coord_fixed()+
  geom_vline(xintercept = 0)+
  geom_hline(yintercept = 0)
