# Punto 4

set.seed(73)
mu = 10
sig = 2
n = 15
alpha = 0.05
m = 1e5
nRejected = 0
vps <- numeric(m)

for (j in 1:m) {
  data = rnorm(n, mu, sig)
  Xbar = mean(data)
  S = sd(data)
  Tc = sqrt(n) * (Xbar - mu) / S
  t_per = qt(1-alpha, n-1)
  if (Tc > t_per) {
    nRejected = nRejected + 1
  }
  vp = 1 - pt(Tc, n-1)
  vps[j] = vp
} 

alpha_exp = nRejected / m
alpha_exp

# Valores p
hist(vps, freq=FALSE)

# Tercera parte
nu_values = 1:3
rejected_values = numeric(length(nu_values))
for (nu in nu_values) {
  nRejected = 0
  for (j in 1:m) {
    data = rnorm(n, mu + nu, sig)
    Xbar = mean(data)
    S = sd(data)
    Tc = sqrt(n) * (Xbar - mu) / S
    t_per = qt(1-alpha, n-1)
    if (Tc > t_per) {
      nRejected = nRejected + 1
    }
  } 
  rejected_values[nu] = nRejected
}

rejected_values

rejected_values/m


