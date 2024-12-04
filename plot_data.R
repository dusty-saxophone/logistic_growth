#Script to plot the logistic growth data

<<<<<<< HEAD
library(ggplot2)

growth_data <- read.csv("experiment.csv")

=======
growth_data <- read.csv("experiment.csv")

install.packages("ggplot2")
library(ggplot2)

>>>>>>> 9e49e242bf012c117978c3ff59eac67b269c2cff
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()

<<<<<<< HEAD

=======
>>>>>>> 9e49e242bf012c117978c3ff59eac67b269c2cff
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')
