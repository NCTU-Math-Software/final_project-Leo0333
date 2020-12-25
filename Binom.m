function [A,PA]=Binom(n,p)
    A=0:n;
    PA=zeros(1,n+1);
    for ii=0:n
        PA(ii+1)=C(n,ii)*(p^ii)*((1-p)^(n-ii));
    end
end
    