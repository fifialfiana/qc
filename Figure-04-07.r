#
# Figure 4.7 on Page 132 


d = seq(0,5, by=0.01)

alpha = 0.05
za2 = qnorm(1-alpha/2)


n=1; beta.n.1 = pnorm(za2 - d*sqrt(n)) - pnorm(-za2 - d*sqrt(n))
n=2; beta.n.2 = pnorm(za2 - d*sqrt(n)) - pnorm(-za2 - d*sqrt(n))
n=5; beta.n.5 = pnorm(za2 - d*sqrt(n)) - pnorm(-za2 - d*sqrt(n))
n=10; beta.n.10 = pnorm(za2 - d*sqrt(n)) - pnorm(-za2 - d*sqrt(n))
n=20; beta.n.20 = pnorm(za2 - d*sqrt(n)) - pnorm(-za2 - d*sqrt(n))
n=100; beta.n.100 = pnorm(za2 - d*sqrt(n)) - pnorm(-za2 - d*sqrt(n))


plot(d, beta.n.1, xlim=c(0,5), ylim=c(0,1), type="l")
lines(d, beta.n.2)
lines(d, beta.n.5)
lines(d, beta.n.10)
lines(d, beta.n.20)
lines(d, beta.n.100)




