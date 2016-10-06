# =======================================================
# Calculating d2 factors in Appendix VI (page 720).
# -------------------------------------------------------
# ========================
# Using a single integral 
# ------------------------
d2A = function(n) {
    integrand = function(x) {
       Phi = pnorm(x)
       return(1 - (1-Phi)^n - Phi^n)
    }
    tmp = integrate(integrand, lower=0, upper=Inf)
    return(2*tmp$value)
}

# ========================
# Using a double integral 
# ------------------------
d2B = function(n,k=1) {
   f= function(x,y) {
     (y^k) * exp(-(x^2+(x+y)^2)/2) * (pnorm(x+y)-pnorm(x))^(n-2)
   }
   tmp = integrate(function(y) {
     sapply(y,function(y) {
              integrate(function(x){f(x,y)},-Inf,Inf)$value})  
   }, 0, Inf)
   return( n*(n-1)/2/pi*tmp$value )
}

# ========================
# Using a simulation 
# ------------------------
d2C = function(n, iter=1000) {
      m1 = 0 
      for ( i in 1:iter ) { 
           r = diff( range(rnorm(n)) ) 
          m1 = m1 + r / iter 
      }
      return(m1)
}
# ------------------------

# ==========
# Example 1 
# ----------
d2A(25)

d2B(25)

d2C(25) # Not accurate enough with iter=1000
d2C(25, iter=100000) 

# ==========
# Example 2
# ----------
system.time(d2A(25))
system.time(d2B(25))
system.time(d2C(25))

# ==========
# Example 3
# ----------
system.time(for(i in 1:100) d2A(25))
system.time(for(i in 1:100) d2B(25))

system.time(for(i in 1:100) d2C(25))  
system.time(for(i in 1:100) d2C(25, iter=10000))  

# =======================================================
# Calculating d3 factors in Appendix VI (page 720).
# -------------------------------------------------------
# ========================
# Using a single integral 
#  (Maybe impossible)
# ------------------------

# ========================
# Using a double integral 
# ------------------------
d3B = function(n) {
    s2 = d2B(n,k=2) - (d2A(n))^2 
   return( sqrt(s2) )
}

# ========================
# Using a simulation 
# ------------------------
d3C = function(n, iter=1000) {
      m1 = 0 
      m2 = 0 
      for ( i in 1:iter ) { 
           r = diff( range(rnorm(n)) ) 
          m1 = m1 + r    / iter 
          m2 = m2 + r^2  / iter 
      }
      s2 =  iter/(iter-1) * (m2-m1^2)
      return( sqrt(s2) )
}
# ------------------------

# ==========
# Example 4
# ----------
d3B(25)
d3C(25)  # Not accurate enough 
d3C(25,iter=100000)
