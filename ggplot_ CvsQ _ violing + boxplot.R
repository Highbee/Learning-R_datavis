# superimposing violin plot and 
# boxplot might give more insigts  to our data

library(ggplot2)
data(Salaries, package = 'carData')
plot_data<-Salaries


ggplot(
  plot_data,
  aes(
    x=factor(
      rank,
      labels = c(
        "Associate Professor",
        "Associate Professor",
        "Professor"
      )
    ),
    y=salary
  )
)+
  geom_violin(fill="cornflowerblue")+
  geom_boxplot(
    fill="orange",
    outlier.color = "orange",
    outlier.size = 2
  )+
  scale_y_continuous(
    labels = scales::dollar
  )+
  labs(title="Salary distribution by rank",
       x="Professional Ranks")+
  theme(axis.text.x = element_text(angle = 45, vjust = 0.6))