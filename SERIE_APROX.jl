using SymPy
using Plots
using LaTeXStrings

# error = 10^-10
# Serie (-1)/factorial(big(n))
error = 10^-10
a(n) = (-1)^n*log(n)/n^2
i = 2
while abs(a(i)) >= error
    i += 1
end
println("Suma parcial de orden $i")
println("Aproximación: $(sum(a, 2:i))")