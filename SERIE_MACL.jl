using SymPy
@vars x real=true
p(n) = series(atan(x), x, 0, n+1).removeO()
for i = 1:5
    println("Suma funcional parcial de grado $(2i-1): $(p(2i-1))")
end

# TERMINO GENERAL: (-1)^(n-1)/2n-1
# Serie alternada
@vars n int=true
c(n) = (-1)^(n-1)/(2n-1)
limit(abs(c(n)/c(n+1)), n => Inf)

# RADIO DE CONVERGENCIA ES 1, POR LO TANTO 
# EL INTERVALO DE CONVERGENCIA ES [-1,1]
error = 10^-8
i = 0
while abs(c(i)) >= error
    i += 1
end
println("Suma parcial de orden $i")
println("Aproximación de π: $(4*sum(c, 1:i))")