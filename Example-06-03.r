# =============================================================
# Example 06-03 on Page 262 of Montgomery 
# -------------------------------------------------------------

# ============================================================
# Read the data set in Table 6.3 on Page 260 (Montgomery 7th).
# Using the file on PC
# Try getwd(), setwd(dir)
# DATA = read.csv("Table-6-3-SQC.csv", header=T) 

# URL: https://github.com/statpnu/Data/blob/master/Table-6-3-SQC.csv
DATA=read.csv("https://raw.githubusercontent.com/statpnu/Data/master/Table-6-3-SQC.csv",header=T)
# -------------------------------------------------------------


# ======================================================
# (1)  mean and sd using tapply of each subgroup
# ------------------------------------------------------
tapply(DATA[[2]], DATA[[1]], mean )

tapply(DATA[[2]], DATA[[1]], sd)



# ======================================================
# (2)  mean of xi and sdi using apply with a marix. 
# ------------------------------------------------------

# Note: try unique(DATA[[1]])

M1 = matrix(DATA[[2]], nrow=25) # Someting wrong. (column-major)
M2 = matrix(DATA[[2]], nrow=25, byrow=T) # Now OK (row-wise)
M2

apply(M2, 1, mean)   # Take mean row-wise. 
apply(M2, 1, sd)     # Take  SD  row-wise. 

# ======================================================
# Now, we are ready to make a xbar-s chart. 
# -------------------------------------------------------


# ======================================================
# (a) xbar chart with s
# -------------------------------------------------------

xbar = apply(M2, 1, mean)   # Take mean row-wise. 
xbar 
xbarbar = mean(xbar) 

n=5 
A3(n) 

UCL = xbarbar + A3(n) * sbar 
CL = xbarbar
LCL = xbarbar - A3(n) * sbar 

UCL
CL 
LCL

#-----------------------------
plot(xbar, type="b", ylim=c(min(xbar,LCL),max(xbar,UCL) ) )
abline(h=CL)
abline(h=c(LCL, UCL), col="red")   




# ======================================================
# (a) S chart
# -------------------------------------------------------
s = apply(M2, 1, sd) 
s
sbar = mean(s)

# B3 and B4 can be obtained in Appendix VI on Page 720 of Montgomery book
# Or, use Appendix-VI.pdf on the class web.
# Or, use R program on the web (Appendix-VI-Montgomery.r.txt)

# Note that m = 25 and n=5

n=5 
B3(n)
B4(n)

UCL = sbar * B4(5)
CL  = sbar
LCL = sbar * B3(5)

UCL
CL 
LCL

#-----------------------------
plot(s, type="b", ylim=c(min(s,LCL),max(s,UCL) ) )
abline(h=CL)
abline(h=c(LCL, UCL), col="red")   


