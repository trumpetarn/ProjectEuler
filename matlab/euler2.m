function [sum] = euler2()
%projecteuler.net/problem=2
%Each new term in the Fibonacci sequence is generated by adding the 
%previous two terms. By starting with 1 and 2, the first 10 terms will be:
%1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
%By considering the terms in the Fibonacci sequence whose values do not 
%exceed four million, find the sum of the even-valued terms.

%SOLVED

a(1)=1;
a(2)=2;
i=3;
sum=2;
while true
    a(i)=a(i-2)+a(i-1);
    if a(i)<4000000
        if mod(a(i),2)==0
            sum=sum+a(i);
        end
    else
        break
    end
    i=i+1;
end
a
end

