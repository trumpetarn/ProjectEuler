function [A]=toDigits(N)
% Returns the digits of a number (MAX 17 digits)
% Ex. 17463 returns [1, 7, 4, 6, 3]
str=num2str(N);
L=length(str);
A=zeros(1,L);
for i=1:L
    A(i)=str2double(str(i));
end