function [A,PA]=Hypergeo(n,N,m)
     A=0:n;
     PA=zeros(1,n+1);
     for ii=1:n+1
        PA(ii)=(C(m,ii-1)*C(N-m,n-ii+1))/C(N,n);
     end
    PA(isnan(PA)) = [];
    PA(isinf(PA))=[];
    A=A(1:size(PA,2));
end