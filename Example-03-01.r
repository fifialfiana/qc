
Class Web: https://sites.google.com/site/statpnu/courses/quality

R Language: https://www.r-project.org/

R Studio: https://www.rstudio.com/products/rstudio/download/

# help.start( ), help("name"), ?name

# =============================================================
# Example 03-01 on Page 69 of Montgomery 
# -------------------------------------------------------------

data = c(48, 41, 35, 36, 37, 26, 36, 46, 35, 47,
         35, 34, 36, 42, 43, 36, 56, 32, 46, 30, 
         37, 43, 17, 26, 28, 27, 45, 33, 22, 27, 
         16, 22, 33, 30, 24, 23, 22, 30, 31, 17 )
#

# Without Comma (,) and ^D after finishing key-in.
data <- scan()
48 41 35 36 37 26 36 46 35 47
35 34 36 42 43 36 56 32 46 30 
37 43 17 26 28 27 45 33 22 27 
16 22 33 30 24 23 22 30 31 17



#-------------------
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
