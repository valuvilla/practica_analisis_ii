
# Constantes
g = 9.81
R = 6371000

# Función para calcular la fuerza F
function calcular_fuerza(h)
    # Expresión de F como serie de potencias
    F = (g * R) / (R + h)^2
    return F
end

# Función para calcular la aproximación de la fuerza F usando el teorema de la serie alternada
function calcular_aproximacion(h)
    n = 0
    F_aprox = 0.0
    
    while true
        # Término de la serie alterna
        termino = ((-1)^n) * (g * R / (R^2)) * ((h / R)^n)
        
        # Actualizar la aproximación de la fuerza
        F_aprox += termino
        
        # Verificar si se alcanza el criterio de convergencia (1%)
        if abs(termino) < 0.01 * F_aprox
            break
        end
        
        n += 1
    end
    
    return F_aprox
end

# Calcular el valor máximo de h para el cual la aproximación difiere en menos del 1%
h_max = R  # Valor inicial para h_max

while true
    F_real = calcular_fuerza(h_max)
    F_aprox = calcular_aproximacion(h_max)
    
    if abs(F_real - F_aprox) / F_real <= 0.01
        break
    end
    
    h_max -= 1
end

println("El valor máximo de h para el cual la aproximación difiere en menos del 1% es: ", h_max)
