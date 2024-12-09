# R scripts for a reproducible analysis of logistic growth

## Question 1

### Introduction
Bacterial populations have distinctive growth curves. They initially multiply exponentially when resources are abundant but then the growth rate slows down as resources become more scarce. Bacterial population sizes can be estimated using a number of different methods (including optical density), and by taking population measurements over time different population parameters can be estimated. In this analysis, raw data is taken from an experiment (**experiment.csv**) in which an isolate of the the bacterium *Escherichia coli* is suspended in 1ml of growth medium. Measurements of the bacterial population size (N) are taken every 60 seconds (t) allowing for the estimation of 3 key population parameters:
1. Growth rate (r)
2. Starting population size (N<sub>0</sub>)
3. Carrying capacity (K)

### Linear models
Estimation of these parameters can be achieved by fitting linear models to the data which provide estimates for the gradient and intercept of the line. 
