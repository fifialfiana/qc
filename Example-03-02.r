# =============================================================
# Example 03-02 on Page 71 of Montgomery 
# -------------------------------------------------------------
data = c(438, 450, 487, 451, 452, 441, 444, 461, 432, 471, 
         413, 450, 430, 437, 465, 444, 471, 453, 431, 458, 
         444, 450, 446, 444, 466, 458, 471, 452, 455, 445, 
         468, 459, 450, 453, 473, 454, 458, 438, 447, 463, 
         445, 466, 456, 434, 471, 437, 459, 445, 454, 423, 
         472, 470, 433, 454, 464, 443, 449, 435, 435, 451, 
         474, 457, 455, 448, 478, 465, 462, 454, 425, 440, 
         454, 441, 459, 435, 446, 435, 460, 428, 449, 442, 
         455, 450, 423, 432, 459, 444, 445, 454, 449, 441, 
         449, 445, 455, 441, 464, 457, 437, 434, 452, 439 )

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


# ==========================================================
# Let's do more on histograms. 
# ----------------------------------------------------------
hist(data)

hist(data, nclass = 10)  # old version

hist(data, breaks = 10)  # new version 

b1 = c(400, 410, 420, 430, 440, 450, 460, 470, 480, 490, 500 )
hist(data, breaks = b1)

#============================================================
tmp = hist(data, breaks=b1)

freq = tmp$counts 
thickness = tmp$mids 
freq

names(freq) = thickness
freq 

barplot(freq)   # Now close to Figure 3.3

# Even closer
barplot(freq, xlab="Metal thickness", ylab="Frequency", col="blue", ylim=c(0,30))

#-------------------------------
# Still a little bit different from Figure 3.3 (from Minitab).
# due to left-closed (Minitab) or right-closed (R) issue.
tmp = hist(data, breaks=b1, right=FALSE)

freq = tmp$counts
thickness = tmp$mids
freq

names(freq) = thickness
freq

barplot(freq)   # Now SAME as Figure 3.3 (textbook used Minitab).
barplot(freq, xlab="Metal thickness", ylab="Frequency", col="blue", ylim=c(0,30))




#============================================================
# Figures 3.4 and 3.5 on Page 72
b2 = seq(407.5, 492.5, by=5)
hist(data, breaks=b2, right=FALSE)

# Next, facelift
tmp = hist(data, breaks=b2, right=FALSE)
freq = tmp$counts 
names(freq) = thickness

thickness = tmp$mids 
freqc = cumsum(freq)

names(freqc) = thickness
freqc

par( mfrow=c(1,2) )   # Sketch two plots into one. 
barplot(freq,  col="blue")
barplot(freqc, col="blue")

