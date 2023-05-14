using SymPy
@vars x real=true
using Plots
using LaTeXStrings


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
