# GKDP plot-- Grouped kernel density plots

data(Salaries, package="carData")

plot_data<-Salaries
View(plot_data)

ggplot(
  data=plot_data,
  mapping =  aes(
    x= salary,
    fill=factor(
      rank,
      labels=c(
        "Assistant Professor",
        "Associate Professor",
        "Professor"
      )
      )
  )
)+
  geom_density(alpha=0.4)+
  labs(title="Salary distribution by rank",
       fill="Ranks"
       )