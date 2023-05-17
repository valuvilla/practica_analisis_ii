using SymPy

a(n)=1/(big(n)*2^(big(n)))
an=[a(n) for n=1:100]
An=cumsum(an)
print(An[100])


b(n)=factorial(big(n))/big(n)^big(n)
bn=[b(n) for n=1:100]
Bn=cumsum(bn)
print(Bn[100])