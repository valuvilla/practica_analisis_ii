using SymPy, Plots
@vars x real = true
f(x) = sin(x)+2
plot(f, 0, 2pi, ylim=(0,3), fillrange = 0, fillalpha = 0.3, label = "")

using Unzip
@vars x, u, v real=true
# f(x) = sin(x)+2
S(u, v) = (u, f(u)*cos(v), f(u)*sin(v))
us = range(0, 2pi, length=100)
vs = range(0, 2pi, length=100)
ws = unzip(S.(us, vs')) # ' es la transpuesta
using PlotlyJS
plotlyjs()
surface(ws...)


# Volumen del solido de revolucion
N(integrate(PI*f(x)^2, 0, 2PI))