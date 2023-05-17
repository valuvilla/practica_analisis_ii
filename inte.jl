using PrettyTables


function area_sup(a, b, n)
    Δx = (b-a)/n
    return sum([f(a+i*Δx)*Δx for i = 1:n])
end

f(x)= sqrt(log(x))

area_sup(1, 2, 100)

using Plots, SymPy, LaTeXStrings
@vars x real = true
f(x) = sin(x)-cos()




