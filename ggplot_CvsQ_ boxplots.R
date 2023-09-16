library(ggplot2)
data(Salaries, package = "carData")


plot_data<-Salaries
# View(plot_data)
ggplot(
  Salaries,
  aes(
    y=salary,
    x=rank
  )
)+
  geom_boxplot()+
  labs(title = "Salary distribution by rank")