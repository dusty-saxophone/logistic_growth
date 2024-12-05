#Script to plot data and model

growth_data <- read.csv("experiment.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 879 # I actually think its 987.
  
r <- 0.01 # Gradient of fit linear model (model1)
  
K <- 60000000000 # Carrying capacity from log graph (model2)


ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point() 

  # scale_y_continuous(trans='log10')

#sink(file = "package-versions.txt")
#sessionInfo()
#sink()

