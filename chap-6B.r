# =======================================================
# Calculating c4 factors in Appendix VI (page 720).
# -------------------------------------------------------
# ========================
# Using an original gamma
# ------------------------
c4A = function(n) sqrt(2/(n-1))*gamma(n/2)/gamma(n/2-1/2)

# ========================
# Using a log-gamma 
# ------------------------
c4B = function(n) {
     tmp = lgamma(n/2) - lgamma(n/2-1/2)
     sqrt(2/(n-1)) * exp(tmp)
}

# ========================
# Using a simulation 
# ------------------------
c4C = function(n, iter=1000) {
      m1 = 0 
      for ( i in 1:iter ) { 
          m1 = m1 + sd(rnorm(n)) / iter 
      }
      return(m1)
}
# ------------------------

# ==========
# Example 1 
# ----------
c4A(10)

c4B(10)

c4C(10) # Not accurate enough with iter=1000
c4C(10, iter=100000) 

# ==========
# Example 2 
# ----------
c4A(350) # value out of the calculation of gamma function

c4B(350) 

c4C(350) # Not accurate enough with iter=1000
c4C(350, iter=100000) 
