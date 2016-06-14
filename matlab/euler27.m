function [max]=euler27()
MAX_VAL=1000;
%http://projecteuler.net/problem=27
max=[0,0,0];
for a=-1*MAX_VAL:MAX_VAL
    for b=abs(a):MAX_VAL
        n=1;
        if isprime(b)
            while 1
                x=n^2+a*n+b;
                if x<0
                    break
                elseif ~isprime(x)
                    break
                else
                    n=n+1;
                end
            end
        end
        if n>max(1)
            max=[n, a, b];
        end
    end
end

