using SymPy  # Para el cálculo simbólico de límites.
using Plots  # Para el dibujo de gráficas.
# plotlyjs() # Para obtener gráficos interactivos.
using LaTeXStrings  # Para usar código LaTeX en los gráficos.


a(n)=1/(big(n)*2^big(n))
an=[a(n) for n=1:100]
An=cumsum(an)
println("La suma parcial de orden 50 es $(An[100])")

# 



scatter(An, legend=false)


