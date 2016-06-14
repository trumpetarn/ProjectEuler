function [small] = euler5()
%http://projecteuler.net/problem=5 
%2520 is the smallest number that can be divided by each of the numbers 
%from 1 to 10 without any remainder.
%What is the smallest positive number that is evenly divisible by all of 
%the numbers from 1 to 20?

%SOLVED
a=20;
while 1==1
    a=a+1;
    if mod(a,2)==0
        if mod(a,3)==0
            if mod(a,4)==0
                if mod(a,5)==0
                    if mod(a,6)==0
                        if mod(a,7)==0
                            if mod(a,8)==0
                                if mod(a,9)==0
                                    if mod(a,10)==0    
                                        if mod(a,11)==0
        if mod(a,12)==0
            if mod(a,13)==0
                if mod(a,14)==0
                    if mod(a,15)==0
                        if mod(a,16)==0
                            if mod(a,17)==0
                                if mod(a,18)==0
                                    if mod(a,19)==0
                                        if mod(a,20)==0
                                            small=a;
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
