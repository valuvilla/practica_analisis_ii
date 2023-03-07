# Radio de Convergencia
using SymPy
@vars n int=true
a(n) = (-1)^n*1/(2^(2n)*factorial(n)^2)
c(n) = (-1)^n/(2^(2n)*factorial(n)^2)
limit(abs(c(n)/c(n+1)), n => Inf)

