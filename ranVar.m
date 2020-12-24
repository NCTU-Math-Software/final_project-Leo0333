function [S,outP]=ranVar(A,PA,B,PB,f)
    % example:
    % A=[1 2 3 4];
    % PA=[1/4 1/4 1/4 1/4];
    % B=[2 3 4 5];
    % PB=[1/2 1/6 1/6 1/6];
    P=possiMatric(A,B,f);
    S = sort(P);
    outP=zeros(1,size(S,2));
    for ii=1:size(A,2)
        for jj=1:size(B,2)
            value=PA(ii)*PB(jj);
            for kk=1:size(S,2)
                if S(kk)==f(A(ii),B(jj))
                    outP(kk)=outP(kk)+value;
                end
            end
        end
    end
    format long
    for dd=1:size(S,2)
        disp(['The possibility for the given random variable to take value for ',num2str(S(dd)),' is ',num2str(outP(dd))]);
    end
end


            
        
