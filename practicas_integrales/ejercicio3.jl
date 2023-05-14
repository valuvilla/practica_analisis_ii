# Calcular las siguientes integrales definidas:
using SymPy
@vars x real=true

# a)
a = integrate(x^3/(x^2+x+1), -1/2, 0)
N(a) # Aproximación numérica

# b)
integrate(sqrt(16-x^2)/x, 2, 4)

# c)
integrate(1/(3+cos(2x)), 0, PI/2)
