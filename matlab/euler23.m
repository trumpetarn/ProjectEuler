function [answer]=euler23()
%http://projecteuler.net/problem=23
n=25000;
A=abundant(n);
x=1:n;
B=zeros(length(A));
for i=1:length(A)
    B(i,:)=A(i)+A;
end
size(B)
C=unique(B);
size(C)
C=C(C<=n);
C=sum(C)
answer=sum(x)-C;
end
function D=d(n)
x=divisor(n);
D=sum(x(1:end-1));
end

function A=abundant(n)
    j=1;
    A=zeros(1,n);
    for i=1:n
        D=d(i);
        if D>i
            A(j)=i;
            j=j+1;
        end
    end
    A=A(A~=0);
end