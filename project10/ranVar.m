function [S,outP]=ranVar(A,PA,f,B,PB)
    if nargin==5
        P=possiMatric(A,f,B);
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
    end
    
    if nargin==3
        P=possiMatric(A,f);
        S = sort(P);
        outP=zeros(1,size(S,2));
        for ii=1:size(A,2)
            value=PA(ii);
             for kk=1:size(S,2)
                    if S(kk)==f(A(ii))
                        outP(kk)=outP(kk)+value;
                    end
             end
        end
    end
end


            
        
