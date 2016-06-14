function [num,CircularPrimes]=euler35(n)
% http://projecteuler.net/problem=35

prim=primes(n);
num=0;

for N = prim
    if (isCirc(N))
        num = num+1;
        CircularPrimes(num)=N; %#ok<AGROW>
    end
end
end

function [A] = allRotations(N)
    str=num2str(N);
    A = zeros(length(str),1);
    for i=1:length(str)
        str = [str(end) str(1:end-1)];
        A(i)=str2double(str);
    end
end

function b = isCirc(N)
    A = allRotations(N);
    b = sum(isprime(A)) == length(A);
end