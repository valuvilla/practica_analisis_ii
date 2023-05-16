using SymPy, Plots
@vars t real=true
f(t)=sin(t)^2
integrate(f(t), 0, 2PI)*(1/2PI)
plot(f, 0, 2PI)
plot!(x -> 1/2)