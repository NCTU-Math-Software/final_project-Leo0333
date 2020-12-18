function P=possiMatric(A,B)
    P=[];
    
    for ii=1:size(A,2)
        for jj=1:size(B,2)
            flag=0;
            for ee=1:size(P,2)
                if P(ee)==(A(ii)-B(jj))
                    flag=flag+1;
                end
            end
            if flag==0
                P=[P A(ii)-B(jj)];
            end
        end
    end
end
                    
            
        