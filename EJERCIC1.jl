# Calcular la suma parcial de orden 100

a(n)=factorial(big(n))/n^n
an=[a(n) for n=1:100]
An=cumsum(an)


using Plots
using LaTeXStrings

b(n)=log(n)/n
bn=[b(n) for n=1:100]
Bn=cumsum(bn)

scatter(1:100, Bn, label=L"$b_n$")

c(n)=cos(1/n)
cn=[c(n) for n=1:100]
Cn=cumsum(cn)

scatter!(1:100, Cn, label=L"$c_n$")

d(n)=exp(1/n)/n
dn=[d(n) for n=1:100]
Dn=cumsum(dn)

scatter!(1:100, Dn, label=L"$d_n$")

e(n)=factorial(big(n))/n^n
en=[e(n) for n=1:100]
En=cumsum(en)

scatter!(1:100, En, label=L"$e_n$")

f(n)= (n+1)/sqrt(n^5)
fn=[f(n) for n=1:100]
Fn=cumsum(fn)

scatter!(1:100, Fn, label=L"$f_n$")

