using SymPy
@vars x real=true
f(x)=sin(x/2)
gr()
plot(f(x), 0 , 100, aspect_ratio = 1)

using QuadGK
N(quadgk(sqrt(1+diff(f(x))^2), 0, 100, rtol=10^-17)[1])