# R scripts for a reproducible analysis of logistic growth

## Question 1

### Introduction
<<<<<<< HEAD

Bacterial populations have distinctive growth curves. They initially multiply exponentially when resources are abundant but then the growth rate slows down as resources become more scarce. Bacterial population sizes can be estimated using a number of different methods (including optical density), and by taking population measurements over time different population parameters can be estimated. In this analysis, raw data is taken from an experiment (**experiment.csv**) in which an isolate of the the bacterium *Escherichia coli* is suspended in 1ml of growth medium. Measurements of the bacterial population size (N) are taken every 60 seconds (t) allowing for the estimation of 3 key population parameters: 1. Growth rate (r) 2. Starting population size (N<sub>0</sub>) 3. Carrying capacity (K)

### Linear models

Estimation of these parameters can be achieved by fitting linear models to the data which provide estimates for the gradient and intercept of the line. However, to fit the linear models the exponential population size data must first be linearised using a log transformation.

<p align="center">

<img src="https://github.com/dusty-saxophone/logistic_growth/blob/main/logistic_growth(2).png" width="650" height="300"/>

</p>

Two linear models are required to represent the two linear portions of the log transformed data

-   Linear model 1
    -   t \< 1200
    -   Used to estimate growth rate
-   Linear model 2
    -   t \> 2500
    -   Used to estimate carrying capacity

### Results

#### Estimating growth rate (r)

Growth rate is estimated using linear model 1 (t \< 1200). The gradient of this line is equivalent to the growth rate of the bacterial population - the change in population size over time

$r = 0.01$
=======
Bacterial populations have distinctive growth curves. They initially multiply exponentially when resources are abundant but then the growth rate slows down as resources become more scarce. Bacterial population sizes can be estimated using a number of different methods (including optical density), and by taking population measurements over time different population parameters can be estimated. In this analysis, raw data is taken from an experiment (**experiment.csv**) in which an isolate of the the bacterium *Escherichia coli* is suspended in 1ml of growth medium. Measurements of the bacterial population size (N) are taken every 60 seconds (t) allowing for the estimation of 3 key population parameters:
1. Growth rate (r)
2. Starting population size (N<sub>0</sub>)
3. Carrying capacity (K)

### Linear models
Estimation of these parameters can be achieved by fitting linear models to the data which provide estimates for the gradient and intercept of the line. However, to fit the linear models the exponential population size data must first be linearised using a log transformation.
<p align="center">
<img src="https://github.com/dusty-saxophone/logistic_growth/blob/main/logistic_growth(2).png" width="650" height="300">
</p>
Two linear models are required to represent the two linear portions of the log transformed data

- Linear model 1
  - t < 1200
  - Used to estimate growth rate
- Linear model 2
  - t > 2500
  - Used to estimate carrying capacity

### Results
#### Estimating growth rate (r)
Growth rate is estimated using linear model 1 (t < 1200). The gradient of this line is equivalent to the growth rate of the bacterial population - the change in population size over time.





>>>>>>> 21fad93d447b01cb53951997310420c75a0a39a6
