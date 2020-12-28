function [A,PA]=Normal(mu,lo)
    A=linspace(-1000+mu,1000+mu,10^7);
    PA=ones(1,10^7);
    for ii=1:size(A,2)
        PA(ii)=(1/(sqrt(2*pi)*lo))*exp((-(A(ii)-mu)^2)/(2*(lo^2)));
    end
end