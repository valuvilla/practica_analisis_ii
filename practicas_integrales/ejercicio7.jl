using SymPy, Plots
@vars x real=true
f(x)=exp(-x)
plot(f, 0, 100)
integrate(f(x), 0, oo)