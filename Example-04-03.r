#==================================================================
# Example 4.3 on Page 123
# H0: mu = mu0 vs. H1: mu not= mu0, where mu0=3200

x = data = c(3193, 3124, 3153, 3145, 3093, 3466, 3355, 
  2979, 3182, 3227, 3256, 3332, 3204, 3282, 3170)

xbar = mean(x)

s2 = var(x)
s= sqrt(s2) # or sd(x) 

n = length(x)

mu0 = 3200

t0 = (xbar - mu0) / (s/sqrt(n))

alpha=0.05

qt(1-alpha/2, df=n-1)  # Compare this with Appendix IV on Page 714. 

# p-value
2 * (1-pt( abs(t0), df=n-1))

#----------------
# Using t.test()
t.test(x, alternative="two.sided", mu=mu0)

#==================================================================
# Example 4.4 on Page 125
# 100(1-alpha) C.I

xbar - qt(1-alpha/2, df=n-1) * s/sqrt(n) 
xbar + qt(1-alpha/2, df=n-1) * s/sqrt(n) 

# using lm()
mylm = lm(x ~ 1)

# Two-cide C.I.
confint(mylm)

confint(mylm, level=0.95)

# Trick: 1-alpha one-side C.I 
#   Find (1-2*alpha) two-side C.I.

confint(mylm, level=0.90)
confint(mylm, level=1-2*alpha)



#==================================================================
# eg: Page 126
# H0: sigma^2 = sigma0^2  vs. H1: sigma^2 > sigma0^2, where sigma0^2=100^2 

sigma0=100

chi2 = (n-1)*s^2/sigma0^2

qchisq(1-0.05, df=n-1)

# p-value
1-pchisq( chi2, df=n-1)




