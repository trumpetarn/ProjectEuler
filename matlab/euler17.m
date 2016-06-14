function S=euler17()
% http://projecteuler.net/problem=17
% 
%
%

one=3;
two=3;
three=5;
four=4;
five=4;
six=3;
seven=5;
eight=5;
nine=4;
ten=3;
eleven=6;
twelve=6;
thirteen=8;
fourteen=8;
fifteen=7;
sixteen=7;
seventeen=9;
eighteen=8;
nineteen=8;
twenty=6;
thirty=6;
forty=5;
fifty=5;
sixty=5;
seventy=7;
eighty=6;
ninety=6;
hundred=7;
thousand=8;

A=9*10*(one+two+three+four+five+six+seven+eight+nine);
B=(ten+eleven+twelve+thirteen+fourteen+fifteen+sixteen+seventeen+...
    eighteen+nineteen)*10;
C=900*(hundred)+100*(one+two+three+four+five+six+seven+eight+nine);
D=10*10*(twenty+thirty+forty+fifty+sixty+seventy+eighty+ninety);
And=3*(900-9);
S=A+B+C+D+And+one+thousand;

