using Plots, LaTeXStrings
an = [(-2)^n for n = 0:9]
scatter(0:9, cumsum(an), label=L"$\sum (-2)^n$")

bn=[(-1/2)^n for n=0:9]
scatter(0:9, cumsum(bn), label=L"$\sum (-1/2)^n$")

cn=[(1/2)^n for n=0:9]
scatter(0:9, cumsum(cn), label=L"$\sum (1/2)^n$")

dn=[(2)^n for n=0:9]
scatter(0:9, cumsum(dn), label=L"$\sum (2)^n$")