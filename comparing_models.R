
t = seq(0, 4980, by = 60)

# N = N0 * e^rt
N = 987 * exp(0.01 * t)

exponential_model <- data_frame(t = t, N = N)

write.csv(exponential_model, file = "exponential_model.csv", row.names = FALSE)



logistic_growth_data <- read.csv("experiment.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 987 #879 # I actually think its 987.

r <- 0.01 # Gradient of fit linear model (model1)

K <- 60000000000 # Carrying capacity from log graph (model2)


exponential_growth_data <- read.csv("exponential_model.csv")

exponential_fun <- function(t) {
  
  N <- N0 * exp(r * t)
  
  return(N)
  
}

ggplot(aes(t,N), data = logistic_growth_data) +
  
  geom_function(fun = logistic_fun, aes(colour = "logistic")) +
  
  geom_function(fun = exponential_fun, aes(colour = "exponential")) +
  
  scale_y_continuous(trans='log10') +
  
  scale_color_manual(values = c("logistic" = "red",
                                "exponential" = "blue"),
                     name = "Growth Model") +
  labs(x = "time (minutes)",
       y = "Log population size")

