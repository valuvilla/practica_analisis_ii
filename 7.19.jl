using SymPy  # Para el cálculo simbólico de integrales.
using QuadGK  # Para el cálculo numérico de integrales.
using Plots  # Para el dibujo de gráficas.
#plotlyjs()  # Para obtener gráficos interactivos.
using LaTeXStrings  # Para usar código LaTeX en los gráficos.
using PrettyTables # Para formatear tablas.

# calcular el volumen de un solido de revolucion generado por la rotacion del eje x de la region comprendida entre las funciones f(x)=log(x) y g(x)= x-1/2
#donde se cortan las funciones 
#primero dibujamos
using Plots, SymPy, LaTeXStrings
@vars x real = true
f(x) = log(x)
g(x) = x-1/2
plot(f(x), 0, 2, label = L"$f(x)=log(x)$")
plot!(g(x), 0, 2, label = L"$g(x)=x-1/2$")
#calclamos el solido de revolcuion de la funciones por separado
#solide de revolucion de f(x)
sol1 = N(integrate(pi*f(x)^2, 0, 2))
#solide de revolucion de g(x)
sol2 = N(integrate(pi*g(x)^2, 0, 2))

sol3 = sol2-sol1

#calcular el volumen de un solido de revolucion generado por la rotacion del eje y de la region comprendida entre las funciones f(x)=log(x) y g(x)= x-1/2
#primero dibujamos
using Plots, SymPy, LaTeXStrings
@vars x real = true
f(x) = log(x)
g(x) = x-1/2
plot(f(x), 0, 2, label = L"$f(x)=log(x)$")
plot!(g(x), 0, 2, label = L"$g(x)=x-1/2$")

