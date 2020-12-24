function [B,PB]=diceGame(A,PA,n)
    valueNum=size(A,2);
    P=zeros(1,n);
    B=[];
    % for B
    for ii=1:(valueNum^n)
         number=ii;
        for kk=1:n
            P(n-kk+1)=number-valueNum*floor(number/valueNum);
            number=floor(number/valueNum);
        end
        
        for kk=1:n
            if P(kk)==0
                P(kk)=6;
            end
        end
        
        value=0;
        for kk=1:n
            value=value+A(P(kk));
        end
        
        flag=0;
        for kk=1:size(B,2)
            if B(kk)==value
                flag=flag+1;
            end
        end
        
        if flag==0
            B=[B value];
        end
        B=sort(B);
    end
    
    % for PB
    PB=zeros(1,size(B,2));
    for ii=1:(valueNum^n)
        number=ii;
        for kk=1:n
            P(n-kk+1)=number-valueNum*floor(number/valueNum);
            number=floor(number/valueNum);
        end
        
        for kk=1:n
            if P(kk)==0
                P(kk)=6;
            end
        end
        
        value=0;
        for kk=1:n
            value=value+A(P(kk));
        end
        
        pro=1;
        for kk=1:n
            pro=pro*PA(P(kk));
        end
        
        for kk=1:size(B,2)
            if value==B(kk)
                PB(kk)=PB(kk)+pro;
            end
        end
    end
end
        
        