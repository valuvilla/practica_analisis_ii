# Radio de Convergencia
using SymPy
@vars n int=true
a(n) = (-1)^n*1/(2^(2n)*factorial(n)^2)
c(n) = (-1)^n/(2^(2n)*factorial(n)^2)
limit(abs(c(n)/c(n+1)), n => Inf)


#Suma funcional parcial de grado 1: x
using Plots, LaTeXStrings, Bessels
@vars x real=true
a(x,n) = (-1)^n/(2^(2n)*factorial(n)^2) * x^(2n)
N = 10
an = [a(x,n) for n=0:N]
An = sum(an)
plot(An, -8, 8, label="Suma funcional parcial", legend=:bottomright)
plot!(besselj0)