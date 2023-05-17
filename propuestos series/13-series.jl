# Serie de Taylor de la función exponencial
using SymPy
@vars x real=true
p(n) = series(exp(x), x, 0, n+1).removeO()
for i = 1:5
    println("Suma funcional parcial de grado $(2i-1): $(p(2i-1))")
end

# TERMINO GENERAL: x^n/n!
# Serie de Taylor de la función exponencial
@vars n int=true

c(n) = 1/factorial(big(n))

error = 10^(-50)
i = 0
while abs(c(i)) >= error
    i += 1
end

println("Suma parcial de orden $i")
println("Aproximación de exp(1/2): $(sum(c, 1:i))")



