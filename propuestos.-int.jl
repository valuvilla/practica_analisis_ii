using SymPy
@vars x real = true

f(x)= (exp(-x^2/2))/sqrt(2*pi)
# area total bajo la curva
sol= integrate(f(x), (x, -Inf, Inf))
N(sol)

@vars t real = true
f(t) = 100*t*exp(-t)
sol= N((1/5) * integrate(f(t), 0, 5))


using QuadGK

p = 2

f_prime(x) = sinh(x / p) 

length_integral(x) = sqrt(1 + f_prime(x)^2)
length, error = quadgk(length_integral, -1, 1)


using QuadGK, SymPy

f(x) = sqrt(1 - (x^2 / 4))
# Derivada de f con respecto a x
f_prime_1(x) = -x / (2 * sqrt(4 - x^2))

k = -2
b = 2

area_integral(x) = N(2 * PI * f(x) * sqrt(1 + f_prime_1(x)^2))
area, error = quadgk(area_integral, k, b)

# calcular la mediana de una función de densidad del modelo de distribicion exponencial
using Distributions

# Crear una instancia de la distribución exponencial con lambda = 1
dist = Exponential(1)

# Calcular la media
media = 1 / rate(dist)
println("La media de la distribución exponencial es: $media")

# Calcular la mediana
mediana = quantile(dist, 0.5)
println("La mediana de la distribución exponencial es: $mediana")
