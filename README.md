# R scripts for a reproducible analysis of logistic growth

## Question 1

### Introduction

Bacterial populations have distinctive growth curves. They initially multiply exponentially when resources are abundant but then the growth rate slows down as resources become more scarce. Bacterial population sizes can be estimated using a number of different methods (including optical density), and by taking population measurements over time different population parameters can be estimated. In this analysis, raw data is taken from an experiment (**experiment.csv**) in which an isolate of the the bacterium *Escherichia coli* is suspended in 1ml of growth medium. Measurements of the bacterial population size (N) are taken every 60 minutes (t) allowing for the estimation of 3 key population parameters:

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

#### Estimating growth rate (r) and starting population size (N<sub>0</sub>):

Growth rate is estimated using linear model 1 (t \< 1200). The gradient of this line is equivalent to the growth rate of the bacterial population - the change in population size over time. The intercept of this line is equivalent to the starting population size of the bacterial culture.

Linear regression:

``` math
\begin{equation}
ln(N) = ln(N_0) + rt
\end{equation}
```

As the equation for a line is:

``` math
\begin{equation}
y = b + mx
\end{equation}
```

Therefore:

``` math
\begin{equation}
r = 0.01
\end{equation}
```

And:

``` math
\begin{equation}
ln(N_0) = 6.89...
\end{equation}
```

``` math
\begin{equation}
N_0 = 987
\end{equation}
```

#### Estimating carrying capacity (K):

Carrying capacity is estimated using linear model 2 (t \> 2500). This is a horizontal line (gradient = 0) in which the intercept is representative of the carrying capacity.

Linear regression 2:

``` math
\begin{equation}
N(t) = K + 0\cdot t
\end{equation}
```

As the equation for a line is:

``` math
\begin{equation}
y = b + mx
\end{equation}
```

Therefore:

``` math
\begin{equation}
K = 6 \times 10^{10}
\end{equation}
```

## Question 2

#### Estimating population sizes when assuming exponential growth

Using linear model 1 for exponential growth and estimated parameters, when **t = 4980**:

``` math
\begin{equation}
ln(N) = ln(N_0) + rt
\end{equation}
```

``` math
\begin{equation}
ln(N) = ln(987) + 0.01\cdot 4980
\end{equation}
```

``` math
\begin{equation}
ln(N) = 56.69...
\end{equation}
```

``` math
\begin{equation}
N = 4.19 \times 10^{24}
\end{equation}
```

Under the logistic growth model at t = 4980, the population size is 6 x 10<sup>10</sup>. This is much smaller than the figure predicted under the exponential model, as the logistic model accounts for growth slowing towards a carrying capacity.

## Question 3

### Graph comparing logistic vs exponential growth

![](https://github.com/dusty-saxophone/logistic_growth/blob/main/Graph_images/growth_comparison_plot.png)
