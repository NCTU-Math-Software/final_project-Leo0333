function [A,PA]=Exponential(lambda)
    A=linspace(0,1000,10^7);
    PA=ones(1,10^7);
    for ii=1:size(A,2)
        PA(ii)=lambda*exp(-lambda*A(ii));
    end
end
