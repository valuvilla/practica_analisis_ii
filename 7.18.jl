using SymPy
@vars t real = true
f(t) = 100*t*exp(-t)
sol= N((1/5) * integrate(f(t), 0, 5))

