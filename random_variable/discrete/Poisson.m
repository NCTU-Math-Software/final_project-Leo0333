function [A,PA]=Poisson(lambda)
    A=0:(10^3);
    PA=zeros(1,(10^3)+1);
    for ii=0:(10^3)
        PA(ii+1)=exp(-lambda)*((lambda^ii)/factorial(ii));
    end
end