function [answer]=euler26()
%http://projecteuler.net/problem=26
sequenceLength = 0;
j=1;
for i=1000:-1:2
    if (sequenceLength >= i)
        break
    end
    foundRemainders = zeros(1,i);
    value = 1;
    position = 0;
 
    while (foundRemainders(value) == 0 && value ~= 0)
        foundRemainders(value) = position;
        value = value*10;
        value = mod(value,i)+1;
        position=position +1;
    end
 
    if (position - foundRemainders(value) > sequenceLength)
        sequenceLength = position - foundRemainders(value);
    end
end
sequenceLength
answer=i+1;