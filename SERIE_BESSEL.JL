using SymPy
using Plots
using LaTeXStrings

# RADIO CONVERGENCIA FUNCIO BESSEL
@vars n int=true
c(n) = (-1)^n*1/(2^(2n)*factorial(n)^2)
limit(abs(c(n)/c(n+1)), n => Inf)

# LA SERIE CONVERGE PARA TODO X

# Dibujar en una misma gráfica la suma 
# funcional parcial de orden 10 de la 
# serie y la función de Bessel de orden 0.
using Plots, LaTeXStrings, Bessels
@vars x real=true
a(x,n) = (-1)^n/(2^(2n)*factorial(n)^2) * x^(2n)
N = 10
an = [a(x,n) for n=0:N]
An = sum(an)
plot(An, -8, 8,  ylims = (-1,1), label=L"$\sum_{n=0}^{10} (-1)^n\frac{x^{2n}}{2^{2n}(n!)^2}$")
plot!(besselj0, label = L"$J_0(x)$")