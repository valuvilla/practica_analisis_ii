using SymPy

@vars n int=true
c(n) = exp(n)
limit(abs(c(n)/c(n+1)), n => Inf)

# RADIO DE CONVERGENCIA ES 1, POR LO TANTO 
# EL INTERVALO DE CONVERGENCIA ES [-1,1]
error = 10^-50
i = 0
while abs(c(i)) >= error
    i += 1
end
println("Suma parcial de orden $i")
println("Aproximación de π: $(4*sum(c, 1:i))")