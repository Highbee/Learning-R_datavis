ggplot(
  mpg,
  aes(
    x=class,
    fill=drv
  )
)+geom_bar(position = "dodge",
           preserve="single")
  #sometimes, some fill may have zero values and R enlarges the remain bar,
  #to preserve the width use preserver="single"
