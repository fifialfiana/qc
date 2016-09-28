
#======================================================================
# Example 4.14 on Page 161 of SQC by Montgomery 
#======================================================================
x0 = rep(1,16)
x1 = c(80, 93, 100, 82, 90, 99, 81, 96, 94, 93, 97, 95, 100, 85, 86, 87)
x2 = c( 8,  9,  10, 12, 11,  8,  8, 10, 12, 11, 13, 11,   8, 12,  9, 12)
y = c(2256, 2340, 2426, 2293, 2330, 2368, 2250, 2409, 2364, 2379, 2440, 
      2364, 2404, 2317, 2309, 2328)
#-----------------------------------------------------------------------
mylm1 = lm ( y ~ x1 )        # H0 : beta2 = 0
mylm2 = lm ( y ~ x1 + x2 )   # H1 : beta2 not= 0

summary(mylm1)
summary(mylm2)

anova(mylm1, mylm2)
 
