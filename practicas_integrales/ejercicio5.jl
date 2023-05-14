# Dibujar y calcular el área encerrada por la parábola y = x^2-7x+6 y el eje de abscisas en el intervalo [2, 7].
using SymPy, Plots
@vars x real=true
f(x) = x^2-7x+6
plot(f(x), 2, 7, fillrange = 0, fillalpha = 0.3)
# Manualmente por trozos
a = solve(f(x))
-integrate(f(x), 2, a[2]) + integrate(f(x), a[2], 7)
# Con valor absoluto
integrate(abs(f(x)), 2, 7)