---
---
---

# R scripts for a reproducible analysis of logistic growth

## Question 1

### Introduction

Bacterial populations have distinctive growth curves. They initially multiply exponentially when resources are abundant but then the growth rate slows down as resources become more scarce. Bacterial population sizes can be estimated using a number of different methods (including optical density), and by taking population measurements over time different population parameters can be estimated. In this analysis, raw data is taken from an experiment (**experiment.csv**) in which an isolate of the the bacterium *Escherichia coli* is suspended in 1ml of growth medium. Measurements of the bacterial population size (N) are taken every 60 seconds (t) allowing for the estimation of 3 key population parameters:

1.  Growth rate (r)

2.  Starting population size (N<sub>0</sub>)

3.  Carrying capacity (K)

### Linear models

Estimation of these parameters can be achieved by fitting linear models to the data which provide estimates for the gradient and intercept of the line. However, to fit the linear models the exponential population size data must first be linearised using a log transformation.

<p align="center">

<img src="https://github.com/dusty-saxophone/logistic_growth/blob/main/logistic_growth(2).png" width="650" height="300"/>

</p>

Two linear models are required to represent the two linear portions of the log transformed data

-   Linear model 1
    -   t \< 1200
    -   $ln(N) = ln(N_0) + rt$
    -   Used to estimate **growth rate** and **starting population size**
-   Linear model 2
    -   t \> 2500
    -   $N(t) = K + 0\cdot t$
    -   Used to estimate **carrying capacity**

### Results

#### Estimating growth rate (r) and starting population size (N<sub>0</sub>)

Growth rate is estimated using linear model 1 (t \< 1200). The gradient of this line is equivalent to the growth rate of the bacterial population - the change in population size over time. The intercept of this line is equivalent to the starting population size of the bacterial culture.

Linear regression:

<center>$ln(N) = ln(N_0) + rt$</center>

As the equation for a line is:

$y = b + mx$

Therefore:

$r = 0.01$

And:

$ln(N_0) = 6.89...$

$N_0 = 987$

#### Estimating carrying capacity (K)

Carrying capacity is estimated using linear model 2 (t \> 2500). This is a horizontal line (gradient = 0) in which the intercept is representative of the carrying capacity.

Linear regression 2:

$N(t) = K + 0\cdot t$

As the equation for a line is:

$y = b + mx$

Therefore:

$K = 6 \times 10^{10}$
