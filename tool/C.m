% calculate C(m,n)
% input: m,n two nonegative integer, and 0<=n<=m
% output: �bm�Ӥ��P�F�褤��n�ӥB���Ҽ{���Ǫ��զX��

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