function S=euler15(N)
% http://projecteuler.net/problem=15
%
% Exampel a 5x5-grid start in the upper left end in lower right
% we can se there is only one way to go giving there is no backtracing and
% we are starting on row E or column 5, a star on D4 gives 2 diffrent ways,
% continuing we get the result to the right. which is Pascals triangle. and
% point XY we are on position [end-X+1; end-Y+1] in the pascalfunction
%
%   1 2 3 4 5     
% A  _ _ _ _       70 35 15 5  1
% B |_|_|_|_|      35 20 10 4  1
% C |_|_|_|_|      15 10 6  3  1
% D |_|_|_|_|      5  4  3  2  1
% E |_|_|_|_|      1  1  1  1  1 


a=pascal(N+1);
S=a(end, end);