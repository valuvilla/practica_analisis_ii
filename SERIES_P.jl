using SymPy
using Plots
using LaTeXStrings

# Serie 1/n^p
# p= 1/2
a(n)= 1/n^(1/2)
an=[a(n) for n=1:100]
An=cumsum(an)
scatter(1:100, An, label=L"$p=1/2$", legend=:topleft)

# p= 1
b(n)= 1/n
bn=[b(n) for n=1:100]
Bn=cumsum(bn)
scatter!(1:100, Bn, label=L"$p=1$")

# p= 3/2
c(n)= 1/n^(3/2)
cn=[c(n) for n=1:100]
Cn=cumsum(cn)
scatter!(1:100, Cn, label=L"$p=3/2$")

# p= 2
d(n)= 1/n^2
dn=[d(n) for n=1:100]
Dn=cumsum(dn)
scatter!(1:100, Dn, label=L"$p=2$")