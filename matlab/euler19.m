function [svar]=euler19()
% http://projecteuler.net/problem=19
global month;
global numDays;
global whichDay;
% Mon=0, Sun=6;
whichDay=6;
numDays=0;
month=1;
weekday=mod(365,7);
year=1901;
while year<2001
    day=1;
    if (mod(year,4)==0)
        while day<=366
            day=day+monthLeap();
            weekday=mod(weekday+day,7);
            isDay(weekday);
        end
    else
        while day<=365
            day=day+monthDay();
            weekday=mod(weekday+day,7);
            isDay(weekday);
        end
    end
        
    year=year+1;
end
svar=numDays;
end

function numDay=monthLeap()
    global month;
    a=[31,29,31,30,31,30,31,31,30,31,30,31];
    numDay=a(month);
    month=mod(month,12)+1;
end

function numDay=monthDay()
    global month;
    a=[31,28,31,30,31,30,31,31,30,31,30,31];
    numDay=a(month);
    month=mod(month,12)+1;
end

function isDay(weekday)
    global numDays;
    global whichDay;
    if weekday==whichDay;
        numDays=numDays+1;
    end
end