# Example 6.1 on Page 240

# ============================================================
# Read the data set in Table 6.1 on Page 240 (Montgomery 7th).

# Using the file on PC
# Try getwd(), setwd(dir)
# DATA = read.csv("Table-6-1-SQC.csv", header=T) 

# URL 
DATA=read.csv("https://raw.githubusercontent.com/statpnu/Data/master/Table-6-1-SQC.csv",header=T)



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

apply(M2, 1, RANGE)  # Take RANGE function row-wise. 

# ======================================================
# Now, we are ready to make a xbar-R chart. 
