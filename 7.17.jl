using SymPy  # Para el cálculo simbólico de integrales.
using QuadGK  # Para el cálculo numérico de integrales.
using Plots  # Para el dibujo de gráficas.
#plotlyjs()  # Para obtener gráficos interactivos.
using LaTeXStrings  # Para usar código LaTeX en los gráficos.
using PrettyTables # Para formatear tablas.
#dibujar la funcion f(x)= 1/sqrt(2*pi)*e^(-x^2/2) 
#primero definimos la funcion
f(x)= 1/sqrt(2*pi)*exp(-x^2/2)
plot(f(x), -5, 5, label = L"$f(x)=\frac{1}{\sqrt{2\pi}}e^{-\frac{x^2}{2}}$")
#ahora calculamos el area desde -oo hasta oo
N(integrate(f(x), -oo, oo))
# me ha dado de resultado el siguinte:0.398942280401433⋅√2⋅√π
# ahora lo voy a operar para que me de la opreacion real


# Primero, definimos las constantes
constante_decimal = 0.398942280401433
raiz_de_dos = sqrt(2)
raiz_de_pi = sqrt(π) # en Julia, puedes escribir π para representar Pi

# Luego, calculamos el producto
resultado = constante_decimal * raiz_de_dos * raiz_de_pi

# Finalmente, imprimimos el resultado
println("El resultado es: ", resultado)
