function [ans, a, b, c] = euler9()
%http://projecteuler.net/problem=9

%SOLVED
br=0;

for a=1:331
    for b=a+1:900
        c=1000-a-b;
        if c^2==(a^2+b^2)
            br=1;
            ans=a*b*c
            break
        end
    end
    if br==1
        break
    end
end