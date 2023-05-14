# Calcular la integral definida con un error menor de 10^-10.
using SymPy
@vars x real=true
f(x) = x^x
integrate(f(x), 0, 1) # No se puede calcular

using QuadGK
quadgk(f(x), 0, 1) # Error de 10^-8
quadgk(f(x), 0, 1, rtol = 10^-10)