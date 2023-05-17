using SymPy  # Para el cálculo simbólico de integrales.
using QuadGK  # Para el cálculo numérico de integrales.
using Plots  # Para el dibujo de gráficas.
#plotlyjs()  # Para obtener gráficos interactivos.
using LaTeXStrings  # Para usar código LaTeX en los gráficos.
using PrettyTables # Para formatear tablas.
#dibujar area encerrada entre la funcion f(x)= sen(x) y la funcion g(x)= cos(x) en el intervalo [0,2*pi]
#primero dibujamos
using Plots, SymPy, LaTeXStrings
@vars x real = true
f(x) = sin(x)
g(x) = cos(x)
plot(f(x), 0, 2pi, label = L"$f(x)=sen(x)$")
plot!(g(x), 0, 2pi, label = L"$g(x)=cos(x)$")
#ahora calculamos los puntos de corte de las funciones
# con  valor absoluto 
N(integrate(abs(f(x)-g(x)), 0, 2pi))