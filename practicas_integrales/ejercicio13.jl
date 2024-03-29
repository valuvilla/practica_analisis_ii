using SymPy
@vars x y real=true
f(x) = x^2/2
f⁻¹(y) = solve(y-f(x), x)[2]
# Volumen hasta una altura h
V(x) = integrate(PI*f⁻¹(y)^2, 0, x)
V(x)
# Nivel para un volumen de 100 m³
nivel = solve(V(x)-100)[2]


δ = 900
const g = 9.81

# fuerza
PI*f⁻¹(y)^2*δ*g # m * (a=g)

# trabajo
N(integrate(PI*f⁻¹(y)^2*δ*g*(8-y), 0, nivel))
