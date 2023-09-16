library(dplyr)
new_data<-summarize(starwars,
                    mean_height=mean(height, na.rm=TRUE)
                    )