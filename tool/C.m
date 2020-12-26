% calculate C(m,n)
% input: m,n two nonegative integer, and 0<=n<=m
% output: 在m個不同東西中取n個且不考慮順序的組合數

function y=C(m,n)
    flag=0;
    if m<=0
        y=0;
        flag=1;
    end
    if n<0
        y=0;
        flag=1;
    end
    if m<n
        y=0;
        flag=1;
    end
    if flag==0
        y=factorial(m)/(factorial(n)*factorial(m-n));
    end
end