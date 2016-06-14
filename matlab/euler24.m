function [answer]=euler24()
%http://projecteuler.net/problem=24
N=10;
x=0:1:N-1;
y=perms(x);
z=sortrows(y,1:N);
a=z(1000000,:);
answer=0;
for i=1:N
    fprintf('%d',a(i));
    answer=answer+a(i)*10^(N-i);
end