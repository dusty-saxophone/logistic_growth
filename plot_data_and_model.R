#Script to plot data and model

growth_data <- read.csv("experiment.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 879 #
  
r <- 0.01 # Gradient of fit linear model
  
<<<<<<< HEAD
K <- 60000000000 # Carrying capacity from log graph
=======
K <- 60000000000 # Carrying capicity from log graph
>>>>>>> 9e49e242bf012c117978c3ff59eac67b269c2cff

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')

#sink(file = "package-versions.txt")
#sessionInfo()
#sink()

# git config --global user.email "marcus.williamson@some.ox.ac.uk"
