% calculate C(m,n)
% input: m,n two nonegative integer, and 0<=n<=m
% output: �bm�Ӥ��P�F�褤��n�ӥB���Ҽ{���Ǫ��զX��

function y=C(m,n)
    y=factorial(m)/(factorial(n)*factorial(m-n));
end