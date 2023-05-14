using Sympy
using Plots
using LaTeXStrings

# Serie 1/factorial(n)
a(n)= 1/factorial(big(n))
an=[a(n) for n=0:50]
An=cumsum(an)

# Cuantos decimales son correctos del numero e en la ultma suma parcial
decimales = round(abs(log10(abs(ℯ-An[50]))))
println("El número de decimales correctos es $decimales")


# Serie r^n
# r= -2
b(n)= (-2)^n
bn=[b(n) for n=0:9]
Bn=cumsum(bn)
scatter(0:9, Bn, label=L"$r=-2$", legend=:topleft)
# r= 1/2
c(n)= (1/2)^n
cn=[c(n) for n=0:10]
Cn=cumsum(cn)
scatter(0:10, Cn, label=L"$r=1/2$")
# r= -1/2
d(n)= (-1/2)^n
dn=[d(n) for n=0:10]
Dn=cumsum(dn)
scatter(0:10, Dn, label=L"$r=-1/2$")
# r= 2
e(n)= 2^n
en=[e(n) for n=0:10]
En=cumsum(en)
scatter(0:10, En, label=L"$r=2$")


# S