# Notched boxplots provide an approximat method
# for knowing if group differ.
# Although this is not a formal test
# if the notches of two boxplots do not overlap,
# then theres is a strong evidence(95 % confidence)
# that the "medians", not mean of the two groups differ
data(Salaries, package= "carData")
plot_data<-Salaries

ggplot(data=plot_data,
       aes(
         x=factor(
           rank,labels=c(
           "Assistant Professor",
           "Associate Professor",
           "Professor"
             
           )
         ),
         y=salary
       )
)+
  geom_boxplot(
    notch = TRUE,
    fill="cornflowerblue",
    alpha=.7
  )+
  labs(
    title = "Salary distribution by rank",
    x="Professional Ranks"
  )