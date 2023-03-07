using SymPy
@vars x real=true
@vars n integer=true
p(n) = series(atan(x), x, 0, n+1).removeO()
p(6)
for i = 1:9
    println("Suma funcional parcial de grado $(i): $(p(i))")
end


a(n)=(-1)^(n+1)*x^(2*n-1)/(2*n-1)
c(n)=(-1)^(n+1)/(2*n-1)
limit(abs(c(n)/c(n+1)),n=>Inf)


error=10^-8
i=1
while abs(c(i)/c(i+1))>error
    global i+=1
end
cn=[c(n) for n=1:i]
println("Orden necesario para que el error sea menor que $error: $i")
println("Aproximacion de pi: $(4*sum(cn))")
