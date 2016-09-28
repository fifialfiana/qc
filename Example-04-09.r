#====================================================================
# Example 4.9 on Page 138
#====================================================================
# Note: CI on Page 141 assumed sigma1 not= sigma2

x = c(91.50, 94.18, 92.18, 95.39, 91.79, 89.07, 94.72, 89.21)
y = c(89.19, 90.95, 90.46, 93.21, 97.19, 97.04, 91.07, 92.75)

t.test(x,y, alternative="two.sided", mu=0, var.equal=TRUE)


#---------------------------
# Data Setup
#---------------------------
Observations = c(x,y)
Catalyst = c(rep(1,length(x)), rep(2,length(y)) )
Catalyst = as.factor(Catalyst) 

#---------------------------
# Boxplot 
#---------------------------
cbind(Catalyst, Observations)

boxplot(Observations ~ Catalyst)


