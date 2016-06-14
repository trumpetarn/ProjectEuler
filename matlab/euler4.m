function [palindrome, a, b]=euler4()
%http://projecteuler.net/problem=4 
%A palindromic number reads the same both ways. The largest palindrome made
%from the product of two 2-digit numbers is 9009 = 91 × 99.
%Find the largest palindrome made from the product of two 3-digit numbers.

%SOLVED

d1=999;
d2=999;
palindrome=0;
a=0;
b=0;

while d1>500
    pal=num2str(d1.*d2);
    if palindromes(pal, 'len', 6)>=1
        if d1*d2>palindrome
            palindrome=d1*d2;
            a=d1;
            b=d2;
        end
    end
    if d2>500
        d2=d2-1;
    else
        d1=d1-1;
        d2=d1;
    end
    
end

    
end