# =============================================================
# Example 7-1 on Page 301 of Montgomery 
# -------------------------------------------------------------

# Constant sample size

#======================================
# Data
n = 50    # always 
fi = c( 12, 15,  8, 10,  4, 7, 16,  9, 14, 10,
         5,  6, 17, 12, 22, 8, 10,  5, 13, 11,
        20, 18, 24, 15,  9, 12, 7, 13,  9,  6)
#======================================

m = 30  

# Total number of observations
n*m

# Total number of failures (Defects)

sum(fi)

# pbar
pbar = sum(fi) / (n*m)


# Figure 7.1 
pi = fi / n 

LCL = pbar - 3*sqrt(pbar*(1-pbar)/n)
UCL = pbar + 3*sqrt(pbar*(1-pbar)/n)


plot(pi, type="b")
abline(h=c(LCL, UCL))

# better 

plot(pi, type="b", ylim=c(0,0.5))
abline(h=c(LCL, UCL), col="red", lty=2)



