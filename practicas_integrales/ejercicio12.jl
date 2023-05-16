
gr()
using SymPy
@vars x real = true
f(x) = 1/x
integrate(PI*f(x)^2, 1, oo)

using SymPy
@vars x real = true
f(x) = 1/x
integrate(2PI*f(x)*sqrt(1+diff(f(x))^2), 1, oo)