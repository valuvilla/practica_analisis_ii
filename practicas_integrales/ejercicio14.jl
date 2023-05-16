using SymPy, Plots
@vars x real = true
f(x) = x-1
g(x) = (x-1)^2
# Calculo de los puntos de corte.
a, b = N(solve(f(x)-g(x)))
plot(f(x), a, b, aspect_ratio = 1, label = "")
plot!(g(x), a, b, fillrange = f, fillalpha = 0.3, aspect_ratio = 1, c = 1, label = "")



# Coordenada x del centroide.
cx = integrate(x*(f(x)-g(x)), a, b) / integrate(f(x)-g(x), a, b)
# Coordenada y del centroide
cy = 1/2 * integrate(f(x)^2-g(x)^2, a, b) / integrate(f(x)-g(x), a, b)
# Dibujamos el centroide
scatter!((cx,cy), label = "centroide")


2*PI*cy*integrate(f(x)-g(x), a, b)


2*PI*cx*integrate(f(x)-g(x), a, b)