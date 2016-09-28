#
# H0: p=0.1 vs. H1: p not= 0.1


n = 250
p0= 0.1
x = 41 

Z0 = ( (x-0.5) - n*p0 ) / sqrt( n*p0*(1-p0) )

alpha = 0.05
za2 = qnorm(1-alpha/2) 

c(Z0, za2)

p.value = 2*(1-pnorm(Z0))

p.value 

#------------------------
# Using prop.test() function
prop.test(x, n=n, p=p0 )