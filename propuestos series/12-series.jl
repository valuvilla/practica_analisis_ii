
using SymPy
@vars n int=true
t(n) = 1/((n)*5^(n))
limit(abs(t(n)/t(n+1)), n => Inf)

c(n)=(2^n)/sqrt(n+3)

limit(abs(c(n)/c(n+1)), n => Inf)