library(ggplot2)
data(Salaries, package= "carData")
ggplot(
  Salaries,
  aes(
    x=yrs.since.phd,
    y=salary,
  )
)+
  geom_point()
  # geom_point(alpha=0.1, size=5, color="indianred3")



# Applying an higher order polynomial formula to the same data
ggplot(Salaries,
       aes(x= yrs.since.phd,
           y= salary)
       )+
  geom_point(color="steelblue")+
  geom_smooth(method="lm",
              formula= y~poly(x,2),
              color="indianred3"
              
              )+
  scale_x_continuous(breaks = seq(0, 60, 10),
                     limits = c(0, 60))+
  labs(x="Years since PhD",
       y="Salary",
       title = "Experience vs. Salary",
       subtitle = "9-month salary for 2008-2009")+
  theme_minimal()