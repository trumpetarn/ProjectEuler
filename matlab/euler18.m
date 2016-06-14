function Svar=euler18()
% http://projecteuler.net/problem=18
%% PARAMETERS
height=15;
fileName='euler18.txt';
%% Initialize
tri=triangle(height,fileName);

%% Calculate
for i=height-1:-1:1
    for j=1:i
        tri(i,j) = tri(i,j)+max(tri(i+1,j),tri(i+1,j+1));
    end
end
Svar=tri(1,1);
end

function tri=triangle(numRows, fileName)
tri=zeros(numRows);
fid = fopen(fileName);
A = fscanf(fid, '%d');
fclose(fid);
j=1;
for i=1:numRows
    tri(i,1:i)=A(j:j+i-1);
    j=j+i;
end
end