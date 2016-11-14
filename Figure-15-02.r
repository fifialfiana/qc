#
# Figure 15.2 on Page 656 

n=89; c=2
pp = seq(0, 0.08, length=81)

Pa = pbinom(c, size=n, prob=pp)

plot(pp, Pa, type="l")


