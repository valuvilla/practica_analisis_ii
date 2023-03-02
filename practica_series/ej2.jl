# Calcular las 50 primeras sumas parciales de la serie 
# empezando en n=0. ¿Cuántas cifras decimales del número 
# son correctas en la última suma parcial?

b(n)=1/factorial(big(n))
N=50
bn=[b(n) for n=0:N]
Bn=cumsum(bn)
decimales = round(abs(log10(abs(ℯ-Bn[N]))))

println("El número de decimales correctos es $decimales")
