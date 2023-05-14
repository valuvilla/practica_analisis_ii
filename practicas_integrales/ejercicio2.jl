#Calcular las primitivas de las siguientes funciones:
using SymPy
@vars x real=true

# a)
f(x) = x^2*ln(x)
primitiva = integrate(f(x)) # C = 0 siempre
diff(primitiva) == f(x) # Comprobación con derivada

# b)
g(x) = ln(ln(x))/x
integrate(g(x))

# c)
h(x) = (2x^3+x^2+6)/(x^5-x)
apart(h(x)) # Descomposición en fracciones simples (no necesario)
integrate(h(x))

# d)
@vars a real=true
i(x) = x^a
integrate(i(x), x)

# e)
j(x) = (1 + log(x)) * sqrt(1 + (x*log(x))^2 )
integrate(j(x)) # No se puede calcular

u(x) = x*log(x) # Cambio de variable
# du = diff(u(x))

@vars y real=true
g(y) = j(x)(u(x) => y, diff(u(x), x) => 1) # Cambio de variable
integrate(g(y))(y => u(x)) # Desacer el cambio de variable
