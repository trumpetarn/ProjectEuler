function [ans]=euler29()
%http://projecteuler.net/problem=29
i=1;
for a=2:100
    for b=2:100
        x(i)=a^b;
        i=i+1;
    end
    s=unique(x);
end
ans=length(s);