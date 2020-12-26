function [A,PA]=NegBinom(p,r)
    A=r:(10^3)+r;
    PA=zeros(1,(10^3)+1);
    for ii=1:(10^3)+1
        PA(ii)=C(ii-1+r-1,r-1)*(p^r)*(1-p)^(ii-1);
    end
    PA(isnan(PA)) = [];
    PA(isinf(PA))=[];
    A=A(1:size(PA,2));
end