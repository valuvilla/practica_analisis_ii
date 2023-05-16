using SymPy, Plots
@vars x real = true
f(x) = x-1
h(x) = (x-1)^2
# Calculo de los puntos de corte.
a, b = N(solve(f(x)-h(x)))
plot(f(x), a, b, aspect_ratio = 1, label = "")
plot!(h(x), a, b, fillrange = f, fillalpha = 0.3, aspect_ratio = 1, c = 1, label = "")



# Coordenada x del centroide.
cx = integrate(x*(f(x)-h(x)), a, b) / integrate(f(x)-h(x), a, b)
# Coordenada y del centroide
cy = 1/2 * integrate(f(x)^2-h(x)^2, a, b) / integrate(f(x)-h(x), a, b)
# Dibujamos el centroide
scatter!((cx,cy), label = "centroide")


2*PI*cy*integrate(f(x)-h(x), a, b)


2*PI*cx*integrate(f(x)-h(x), a, b)