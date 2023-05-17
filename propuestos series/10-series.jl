using SymPy, Plots, LaTeXStrings
@vars n real = true
# cos(1/big(n)))
c(n)= cos(1/big(n))
cn=[c(n) for n=1:100]
scatter(1:100, cn, label=L"$cos(1/n)$", )
# log(big(n))/big(n) 
d(n)= log(big(n))/big(n)
dn=[d(n) for n=1:100]
scatter(1:100, dn, label=L"$log(n)/n$")

# exp(1/big(n))/big(n) 
e(n)= exp(1/(n))/(n)
en=[e(n) for n=1:100]
scatter(1:100, en, label=L"$exp(1/n)/n$") 
limit(abs(e(n)/e(n+1)), n => Inf)


# factorial(big(n))/big(n)^big(n)
f(n)= factorial(big(n))/big(n)^big(n)
fn=[f(n) for n=1:100]
scatter(1:100, fn, label=L"$factorial(n)/n^n$")

# (big(n)+1)/sqrt(big(n)^5)
g(n)= (big(n)+1)/sqrt(big(n)^5)
gn=[g(n) for n=1:100]
scatter(1:100, gn, label=L"$(n+1)/sqrt(n^5)$")
