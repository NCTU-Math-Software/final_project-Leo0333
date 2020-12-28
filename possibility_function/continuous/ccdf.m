function [B,PB]=ccdf(A,PA)
    detx=A(2)-A(1);
    B=A;
    PB=zeros(1,size(B,2));
    PB(1)=0;
    for ii=1:size(A,2)-1
        PB(ii+1)=PB(ii)+detx*PA(ii+1);
    end
end