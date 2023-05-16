using Plots, SymPy
@vars x real=true
f(x)=sqrt(1-(x-2)^2)
plot(f(x), 0 , 4, fillrange=0, fillalpha= 0.3, aspect_ratio = 1)
plot!(-f(x), 0 , 4, fillrange=0, fillalpha= 0.3, aspect_ratio = 1)
N(2*integrate(2*PI*x*f(x), 1, 3))