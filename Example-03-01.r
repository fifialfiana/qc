
# R Language: https://www.r-project.org/

# R Studio: https://www.rstudio.com/products/rstudio/download/

# help.start( ), help("name"), ?name

# =============================================================
# Example 03-01 on Page 69 of Montgomery 
# -------------------------------------------------------------

# Reading Data
# (a) using c( ... )
data = c(48, 41, 35, 36, 37, 26, 36, 46, 35, 47,
         35, 34, 36, 42, 43, 36, 56, 32, 46, 30, 
         37, 43, 17, 26, 28, 27, 45, 33, 22, 27, 
         16, 22, 33, 30, 24, 23, 22, 30, 31, 17 )

# (b) using scan( ... )
# Without Comma (,) and ^D after finishing key-in.
data <- scan()
48 41 35 36 37 26 36 46 35 47
35 34 36 42 43 36 56 32 46 30 
37 43 17 26 28 27 45 33 22 27 
16 22 33 30 24 23 22 30 31 17

# (c1) using read.table with hard disk
mydata = read.table("D:\\data\\Example-03-01-data.txt")
mydata = read.table("D:/data/Example-03-01-data.txt")

# Note: mydata = read.table("./Example-03-01-data.txt")  # linux 
# mydata = read.table("D:\data\Example-03-01-data.txt")  # does not work

# Note: Check  
is.vector(data)   
is.vector(mydata) 

data = as.vector( unlist(mydata) )

# (c2) using read.table with URL 
mydata = read.table("https://raw.githubusercontent.com/statpnu/Data/master/Example-03-01-data.txt")


#===================================================================
mean(data)
median(data)

#-------------------
var(data)
sd(data)
IQR(data)
summary(data)

#-------------------
stem(data)
hist(data)
plot(data)
ts.plot(data)
