function [a]=euler14()
% http://projecteuler.net/problem=14
    N=10000;
    a=zeros(1,N);
    a(2)=1;
    for i=3:N
        a(i)=d(i);
    end
    
    if ((a(b)==c) && (a(c)==b))
        
    end
end

function a=d(n)
    x=divisor(n);
    a=sum(x(1:(end-1)));
end