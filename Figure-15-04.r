#
# Figure 15.4 on Page 657

#---------------------------
n=50; c=1
pp = seq(0, 0.08, length=81)
Pa1 = pbinom(c, size=n, prob=pp)

#---------------------------
n=100; c=1
pp = seq(0, 0.08, length=81)
Pa2 = pbinom(c, size=n, prob=pp)

#---------------------------
n=100; c=3
pp = seq(0, 0.08, length=81)
Pa3 = pbinom(c, size=n, prob=pp)

#===========================
plot(pp, Pa1, type="l", ylim=c(0,1))
lines(pp, Pa2, col="red")
## lines(pp, Pa3, col="blue")

