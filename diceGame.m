% Pj10:dice game
function diceGame(A,PA,B,PB)
    P=possiMatric(A,B);
    S = sort(P,1,'descend');
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
        fprintf('The possibility for that A is bigger than B by ',S(dd)); %³o¦æ«Ý­×§ï
    end
end
% ,' is ',outP(dd),'/n'
   
            
        