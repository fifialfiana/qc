# Example 3.13 on Page 97.

x = c(86, 87, 87.2, 87.4, 87.8, 88.2, 88.9, 89.6, 89.7, 90)

n = length(x)

pi = (1:n-0.5) / n 




# Figure 3.27
z = qnorm( pi ) 
cbind(x, pi, z)
plot(x, z)
abline( lm(z~x) )

qqnorm(x) # Note: x-axis and y-axis are switched. 


##==================================================================
## Weibull Plot.

set.seed(1)
x = rweibull (100, shape=2)
# Repeat this with x = rnorm(100, mean=10)

# First, let's check if it is normal
qqnorm(x)
qqline(x)

# Next, Weibull plot
n = length(x)
pi = (1:n - 0.5)/n 
yi = log(-log(1-pi))
xi = sort(x)
ti = log(xi)

plot(ti, yi)
abline( lm(yi~ti) )






