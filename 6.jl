using SymPy
@vars n int=true
t(n) = 1/((n)*5^(n))
c(n)=(2^n)/sqrt(n+3)

limit(abs(c(n)/c(n+1)), n => Inf)


setprecision(256)

x = BigFloat(1/2)
n = 0
term = x

while abs(term) >= BigFloat(10)^-50
    n += 1
    term *= x/n
end

println("Para un error menor a 10^-50, se necesita llegar hasta la suma parcial de orden ", n)
