function [ans6, ans7] = euler6n7()
%http://projecteuler.net/problem=6
%http://projecteuler.net/problem=7

%SOLVED

%num 6
f=[1:1:100];
ans6=sum(f).^2-sum(f.^2);

%num 7
g=primes(200000);
ans7=g(10001);