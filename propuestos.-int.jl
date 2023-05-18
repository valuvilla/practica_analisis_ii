using SymPy, Plots
@vars x real = true

h(x)=sqrt(log(x))
# Suma de Riemann superior
a=1
b=2
n=100
Δx = (b-a)/n
sum([h(a+i*Δx)*Δx for i = 1:n])


# area encerrada en dos funciones
u(x)=sin(x)
v(x)=cos(x)
raices= solve(u(x)-v(x), x)
plot(u, 0, 2*pi, ylims=(0,1), fillrange=0, fillalpha=0.5, label="sin(x)", color=:blue)
plot!(v, 0, 2*pi, ylims=(0,1), fillrange=0, fillalpha=0.5, label="cos(x)", color=:green)
# linea verticale en x=raices[1]
plot!([raices[1], raices[1]], [0, 1], color=:red)
sol= N(integrate(abs(u(x)-v(x)), (x, 0, 2*pi)))

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


using SymPy, Plots