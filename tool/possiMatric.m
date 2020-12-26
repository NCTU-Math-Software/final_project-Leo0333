function P=possiMatric(A,f,B)
    P=[];
    if nargin==3
        for ii=1:size(A,2)
            for jj=1:size(B,2)
                flag=0;
                for ee=1:size(P,2)
                    if P(ee)==f(A(ii),B(jj))
                        flag=flag+1;
                    end
                end
                if flag==0
                    P=[P f(A(ii),B(jj))];
                end
            end
        end
    end
    
    if nargin==2
        for ii=1:size(A,2)
            flag=0;
                for ee=1:size(P,2)
                    if P(ee)==f(A(ii))
                        flag=flag+1;
                    end
                end
                if flag==0
                    value=f(A(ii));
                    P=[P value];
                end 
        end
    end
        
end
                    
            
        