function [result]=euler30()
%http://projecteuler.net/problem=30
k=1;
for i=10:355000
    n=toDigits(i);
    a=sum(n.^5);
    if a==i
        result(k)=a;
        k=k+1;
    end
end
