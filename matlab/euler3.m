function factors=euler3()
%projecteuler.net/problem=3
%The prime factors of 13195 are 5, 7, 13 and 29.
%What is the largest prime factor of the number 600851475143 ?

%SOLVED

a=600851475143;
i=1;
factors(1)=0;
j=0;71

for b=primes(10000)
    if mod(a,b)==0
        a=a./b;
        factors(i)=b;
        i=i+1;
    end
    if a==1
        break
    end
end

end
