% Pj10:dice game
function diceGame(A,PA,B,PB)
    % example:
    % A=[1 2 3 4];
    % PA=[1/4 1/4 1/4 1/4];
    % B=[2 3 4 5];
    % PB=[1/2 1/6 1/6 1/6];
    P=possiMatric(A,B);
    S = sort(P);
    outP=zeros(size(S,2));
    for ii=1:size(A,2)
        for jj=1:size(B,2)
            value=PA(ii)*PB(jj);
            for kk=1:size(S,2)
                if S(kk)==(A(ii)-B(jj))
                    outP(kk)=outP(kk)+value;
                end
            end
        end
    end
    format long
    for dd=1:size(S,2)
        disp(['The possibility for that A is bigger than B by ',num2str(S(dd)),' is ',num2str(outP(dd))]);
    end
end

            
        
