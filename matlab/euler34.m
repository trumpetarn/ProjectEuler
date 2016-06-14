function [answer,result,S]=euler34()
%http://projecteuler.net/problem=34
result=0;
k=1;
S(k)=0;
for i=10:100000
    a=toDigits(i);
    b=sum(factorial(a));
    if i==b
        S(k)=i;
        k=k+1;
        result=result+1;
    end
end
answer=sum(S);