using SymPy  # Para el cálculo simbólico de límites.
using Plots  # Para el dibujo de gráficas.
# plotlyjs() # Para obtener gráficos interactivos.
using LaTeXStrings  # Para usar código LaTeX en los gráficos.


a(n)=1/2^n
an=[a(n) for n=1:50]
An=cumsum(an)

scatter(An, legend=false)


