function eightyNine=euler92()
eightyNine=0;
i=1;
x=num2str(i);
while i<10000000
    y=0;
    for j=1:length(x)
        y=y+str2double(x(j)).^2;
    end
    x=num2str(y);
    if y==1
        i=i+1;
        x=num2str(i);
    elseif y==89
        eightyNine=eightyNine+1;
        i=i+1;
        x=num2str(i);
    end
end