using SymPy
@vars x real=true
p(n) = series(exp(n), x, 0, n+1).removeO()
for i = 1:5
    println("Suma funcional parcial de grado $(2i-1): $(p(2i-1))")
end