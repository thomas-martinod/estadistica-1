# Punto 5
# Intervalo de Confianza

nx = 84
ny = 75
X = 10
Y = 18
alpha = 0.05

E_px = X/nx 
E_py = Y/ny

IC_inf = (E_px - E_py) - qnorm(1 - alpha/2) * sqrt((E_px*(1-E_px)/nx) + (E_py*(1-E_py)/ny))
IC_inf

IC_sup = (E_px - E_py) + qnorm(1 - alpha/2) * sqrt((E_px*(1-E_px)/nx) + (E_py*(1-E_py)/ny))
IC_sup


# Prueba de Hipótesis

Zc = (E_px - E_py) / sqrt((E_px*(1-E_px)/nx) + (E_py*(1-E_py)/ny))
Zc

Zmin = - qnorm(1 - alpha)
Zmin

vp = pnorm(Zc)
vp

