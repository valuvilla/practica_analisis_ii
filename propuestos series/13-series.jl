using Plots, SymPy, Latexify
@vars t real=true
a(t,n) = sin((2n-1)t)/(2n-1)^2
N = 10
an = [a(t,n) for n=1:N]
An = cumsum(an)
plots = []  # Array para guardar las gráficas
for i in An
    push!(plots, plot(i, label=latexify(i), legend=:outertop))
end
plot(plots..., layout=(5,2), size=(800,1600))