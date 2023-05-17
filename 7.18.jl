using SymPy  # Para el cálculo simbólico de integrales.
using QuadGK  # Para el cálculo numérico de integrales.
using Plots  # Para el dibujo de gráficas.
#plotlyjs()  # Para obtener gráficos interactivos.
using LaTeXStrings  # Para usar código LaTeX en los gráficos.
using PrettyTables # Para formatear tablas.

#la funcion T(t) = 100*t*e^-t, calcular la integral de 0 a 5
# primero definimos la funcion
f(t) = 100*t*exp(-t)
integrate(f(t), 0, 5)
#calculamos el resultado numerico y el error de la integral
quadgk(f, 0, 5)

