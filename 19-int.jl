using SymPy, Plots
@vars x real = true
f(x) = log(x)
h(x) = (x-1)/2
# Calculo de los puntos de corte.
a, b = N(solve(f(x)-h(x)))
plot(f, 0.8, 4, label = L"$f(x)=\ln(x)$", legend = :bottomright)
plot!(h(x), a, b, fillrange = f, fillalpha = 0.3, aspect_ratio = 1, c = 1, label = "")


#Volumen de solido de revolucion
using QuadGK
# Funcion que calcula el volumen de un solido de revolucion
solucion= Nquadgk(PI*abs(f(x)-h(x))^2, a, b, rtol=1e-10)[1]
N(solucion)

# Coordenada x del centroide.
cx = integrate(x*(f(x)-h(x)), a, b) / integrate(f(x)-h(x), a, b)
# Coordenada y del centroide
cy = 1/2 * integrate(f(x)^2-h(x)^2, a, b) / integrate(f(x)-h(x), a, b)
# Dibujamos el centroide
scatter!((cx,cy), label = "centroide")

# eje x
2*PI*cy*integrate(f(x)-h(x), a, b)

# eje y
using QuadGK
sol=quadgk(2*PI*cx*abs(f(x)-h(x)), a, b, rtol=1e-10)[1]