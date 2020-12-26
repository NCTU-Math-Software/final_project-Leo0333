function [A,PA]=Geometric(p)
     A=1:(10^3);
     PA=zeros(1,(10^3));
    for ii=1:(10^3)
        PA(ii)=((1-p)^(ii-1))*p;
    end
    PA(isnan(PA)) = [];
    PA(isinf(PA))=[];
    A=A(1:size(PA,2));
end