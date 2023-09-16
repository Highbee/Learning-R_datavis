data(Salaries, package="carData")
library(dplyr)
library(ggplot2)
plot_data<-Salaries %>%
  group_by(rank)%>%
  summarize(mean_salary=mean(salary), n=n())
View(plot_data)

ggplot(
  plot_data,
  aes(
    x=factor(rank,
             labels = c(
               "Assistant Professor",
               "Associate Professor",
               "Professor"
             )),
      
    
    y=mean_salary
  )
)+
  geom_bar(
    stat='identity',
    fill="cornflowerblue"
  )+
  geom_text(
    aes(label=paste0("$", round(mean_salary, 0))
        ),
    vjust=-0.5
    
  )+
  scale_y_continuous(
    breaks = seq(0, 130000, 20000),
    labels = scales::dollar
    
  )+
  labs(title="Mean Salary by Rank",
       subtitle="9-month academic salary for 2006-2009",
       y="Mean Salary",
       x="")