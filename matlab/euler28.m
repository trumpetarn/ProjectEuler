function S=euler28()
% http://projecteuler.net/problem=28
n=1001;
S=1;
J=n*n;
A=1;
for l=3:2:n
    J=J-(l-2)*4;
end

for i=1:(J-1)/4
    for k=1:4
        A=A+2*i;
        S=S+(A);
    end
end
    
    
