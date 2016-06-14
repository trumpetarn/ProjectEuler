function [svar]=euler22()
% http://projecteuler.net/problem=22
N=6000;
fid=fopen('names.txt');
a=textscan(fid,'%s',N,'delimiter',',')
fclose(fid);
b{1}=sort(a{1});
svar=0;
for i = 1:length(b{1})
    c(i)=b{1}(i);
    svar=svar+nameSum(c{i}).*i;
end
size(c)

end

function summa=nameSum(string)
    alphabet='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    value=1:length(alphabet);
    summa=0;
    for i=1:length(string)
        a=(alphabet==string(i));
        summa=summa+sum(a.*value);
    end
end


