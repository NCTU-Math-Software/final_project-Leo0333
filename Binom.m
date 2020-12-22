function P=Binom(n,p)
    P=zeros(n+1,1);
    for ii=0:n
        P(ii+1)=C(n,ii)*(p^ii)*((1-p)^(n-ii));
    end
end
    