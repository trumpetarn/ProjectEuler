function [answer]=euler21()
%http://projecteuler.net/problem=21

AP=amicable(10000);
answer=sum(AP(:,1));
end

function D=d(n)
x=divisor(n);
D=sum(x(1:end-1));
end

function AP=amicable(n)
j=1;
AP(1,2)=0;
for a=1:n
    b=d(a);
    c=d(b);
    if (c==a)&&(b~=a)
        AP(j,:)=[a, b];
        j=j+1;
    end
end
end