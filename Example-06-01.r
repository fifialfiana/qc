# =============================================================
# Example 06-01 on Page 239 of Montgomery 
# -------------------------------------------------------------

# ============================================================
# Read the data set in Table 6.1 on Page 240 (Montgomery 7th).
# Using the file on PC
# Try getwd(), setwd(dir)
# DATA = read.csv("Table-6-1-SQC.csv", header=T) 

# URL: https://github.com/statpnu/Data/blob/master/Table-6-1-SQC.csv
DATA=read.csv("https://raw.githubusercontent.com/statpnu/Data/master/Table-6-1-SQC.csv",header=T)
# -------------------------------------------------------------


# ======================================================
# (1)  mean of xi and Ri using tapply
# ------------------------------------------------------
tapply(DATA[[2]], DATA[[1]], mean )

RANGE = function(x) {diff(range(x))}

tapply(DATA[[2]], DATA[[1]], RANGE)



# ======================================================
# (2)  mean of xi and Ri using apply with a marix. 
# ------------------------------------------------------

# Note: try unique(DATA[[1]])

M1 = matrix(DATA[[2]], nrow=25) # Someting wrong. (column-major)

M2 = matrix(DATA[[2]], nrow=25, byrow=T) # Now OK (row-wise)

apply(M2, 1, mean)   # Take mean row-wise. 
M2

apply(M2, 1, RANGE)  # Take RANGE function row-wise. 

# ======================================================
# Now, we are ready to make a xbar-R chart. 
# -------------------------------------------------------


# ======================================================
# (a) R chart
# -------------------------------------------------------
R = apply(M2, 1, RANGE) 
R
Rbar = mean(R)

# LCL = Rbar * D3   
# D3 and D4 can be obtained in Appendix VI on Page 720 of Montgomery book
# Or, use Appendix-VI.pdf on the class web.
# Or, use R program on the web (Appendix-VI-Montgomery.r.txt)

# Note that m = 25 and n=5

n=5 
D3(n)
D4(n)

LCL = Rbar * D3(5)
UCL = Rbar * D4(5)

LCL
UCL

#-----------------------------
plot(R)
abline(h=Rbar)
abline(h=c(LCL, UCL))   # This does not work

#-----------------------------
plot(R, ylim=c(0, 0.7) )
abline(h=Rbar)
abline(h=c(LCL, UCL))   # Now it works

#-----------------------------
plot(R, type="b", ylim=c(0, 0.7) )
abline(h=Rbar)
abline(h=c(LCL, UCL), col="red")   # Now it works



# ======================================================
# (b) xbar chart with R
# -------------------------------------------------------

xbar = apply(M2, 1, mean)   # Take mean row-wise. 
xbar 
xbarbar = mean(xbar) 

n=5 
A2(n) 

LCL = xbarbar - A2(n) * Rbar 
UCL = xbarbar + A2(n) * Rbar 

LCL
UCL


#-----------------------------
plot(xbar)
abline(h=xbarbar)
abline(h=c(LCL, UCL))   # This does not work

#-----------------------------
plot(xbar, ylim=c(1.3,1.7) )
abline(h=xbarbar)
abline(h=c(LCL, UCL))   # Now it works

#-----------------------------
plot(xbar, type="b", ylim=c(1.3,1.7) )
abline(h=xbarbar)
abline(h=c(LCL, UCL), col="red")   # Now it works



