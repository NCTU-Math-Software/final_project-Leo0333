function [B,PB]=dcdf(A,PA)
    B=A;
    for ii=1:size(A,2)
        PB(ii)=Pcdf(A,PA,A(ii));
    end
end