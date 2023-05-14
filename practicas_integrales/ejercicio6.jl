# Calcular y dibujar el área comprendida entre las parábolas y = -x^2+6x e y = x^2-2x.
using SymPy
@vars x real=true
f(x) = -x^2+6x
g(x) = x^2-2x
a, b = N(solve(f(x) - g(x)))
plot(f(x), a, b)
plot!(g(x), fillrange = f, fillalpha = 0.3)

int = integrate(f(x)-g(x), a, b)

# Decoración
annotate!(2, 4, int)