function [d] = numOfDiv(X)
% Calculates the number of dividers for X
% Retutns   d=number of dividers
%         
% X<2^32
% http://en.wikipedia.org/wiki/Divisor_function

b=factor(X);
c=unique(b);


r=length(c);
d=1;

for j=1:r
    a=sum(ismember(b,c(j)));
    d=d*(a+1);
end


end

