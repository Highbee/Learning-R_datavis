library(ggplot2)
library(dplyr)
data(Salaries, package = "carData")
plot_data <- group_by(Salaries,rank)%>%
  summarize(
    n=n(),
    mean=mean(salary),
    sd=sd(salary),
    se=sd/sqrt(n),
    ci=qt(0.975, df=n-1) * sd/sqrt(n)
  )
# View(plot_data)
# summary(Salaries)

ggplot(
  data = plot_data,
  mapping = aes(
    x=factor(
      rank,
      labels = c(
        "Assistant Professor",
        "Associate Professor",
        "Professor"
        
      )
    ),
    y= mean,
    group=1
  )
  
)+
  geom_point(size=3)+
  geom_line()+
  geom_errorbar(
    aes(
      ymin = mean-se,
      ymax = mean+ se
    ), 
    width=.1
  )
#to have a SD or CI instead of SEM just replace
#the aes in the errorbar with the relevant value already calculated





#We could also view the information by gender
data(Salaries, package = "carData")
plot_data <- group_by(Salaries,rank, sex)%>%
  summarize(
    n=n(),
    mean=mean(salary),
    sd=sd(salary),
    se=sd/sqrt(n),
    ci=qt(0.975, df=n-1) * sd/sqrt(n)
  )
# View(plot_data)
# summary(Salaries)

ggplot(
  data = plot_data,
  mapping = aes(
    x=factor(
      rank,
      labels = c(
        "Assistant Professor",
        "Associate Professor",
        "Professor"
        
      )
    ),
    y= mean,
    color= sex,
    group=sex
  )
  
)+
  geom_point(size=3)+
  geom_line()+
  geom_errorbar(
    aes(
      ymin = mean-se,
      ymax = mean+ se
    ), 
    width=.1
  )