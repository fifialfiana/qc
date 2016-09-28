
# Example 4.12 on Page 153 of SQC by Montgomery

tmp = c(5,5,5,5,5,5,10,10,10,10,10,10,15,15,15,15,15,15,20,20,20,20,20,20)
tmp = rep( c(5,10,15,20), c(6,6,6,6)) 
tmp = rep( c(5,10,15,20), each=6)
Hardwood = as.factor(tmp)

Observations = c( 7, 8,15,11, 9,10,  12,17,13,18,19,15,
                 14,18,19,17,16,18,  19,25,22,23,18,20 )

cbind(Hardwood, Observations)

myaov = aov(Observations ~ Hardwood )
myaov

summary(myaov)


#==============================================================

Hardwood = gl(4,6, labels=c(5,10,15,20) )
Observations = c( 7, 8,15,11, 9,10,  12,17,13,18,19,15, 
                 14,18,19,17,16,18,  19,25,22,23,18,20 )

myaov = aov(Observations ~ Hardwood )
myaov

summary(myaov)


#==============================================================
boxplot(Observations ~ Hardwood)






