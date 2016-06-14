function [b, d]=euler12()
%http://projecteuler.net/problem=12
i=1;
b=0;
while i>0
    b=b+i;
    
    %http://en.wikipedia.org/wiki/Divisor_function
    d=numOfDiv(b);
    
    if d>500
        break;
    end
    i=i+1;
end

end


