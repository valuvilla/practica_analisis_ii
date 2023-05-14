f(x) = x^2
# a) Calcular la suma inferior de Riemann de f en el intervalo [0, 1], tomando una partición de 10 subinvervalos de igual amplitud.
Δx = 1/10
sumainf = sum([f((i-1)*Δx)*Δx for i = 1:10])

# b) Calcular la suma superior de Riemann de f en el intervalo [0, 1], tomando una partición de 10 subinvervalos de igual amplitud.
Δx = 1/10
sumasup = sum([f(i*Δx)*Δx for i = 1:10])

# c) Dar una cota del error cometido en la aproximación del área encerrada entre la gráfica de f y el eje x en el intervalo [0,1] tomando sumas de Riemann para una partición en 10 subintervalos.
error = sumasup - sumainf

# d) Definir una función para calcular de manera aproximada el área encerrada entre la gráfica de f y el eje x en el intervalo [a,b] tomando sumas de Riemann para una partición en n subintervalos, y el error cometido en la aproximación. Utilizarla para calcular los errores aproximados al aproximar el area de f en el intervalo [0,1] tomando particiones desde 10 a 100 subintervalos.
function suminf(a, b, n)
    Δx = (b-a)/n
    return sum([f(a+(i-1)*Δx)*Δx for i = 1:n])
end

suminf(0, 1, 10) # Funciona

function sumsup(a, b, n)
    Δx = (b-a)/n
    return sum([f(a+i*Δx)*Δx for i = 1:n])
end

sumsup(0, 1, 10) # Funciona

function riemann(a, b, n)
    si = suminf(a, b, n)
    ss = sumsup(a, b, n)
    area = (si + ss) / 2
    error = ss - si
    return area, error
end

riemann(0, 1, 10) # Funciona

sumas = [riemann(0, 1, n) for n = 10:100]

# Decoración
using PrettyTables
pretty_table(hcat(first.(sumas), last.(sumas)); header = ["Aproximación", "Error"])