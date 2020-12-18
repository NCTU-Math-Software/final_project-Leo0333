sol=0;
for ii=1:1000
    part=1;
    for jj=1:ii
        part=part*ii;
        if part>=10^10
            part=part-floor(part/(10^10))*(10^10);
        end
    end
    sol=sol+part;
    if sol>=10^10
        sol=sol-floor(sol/(10^10))*(10^10);
    end
end
fprintf(' solution = %d \n', sol)

%% Simple Check by small n
    % solution given by above method
    sol=0;
    for ii=1:kk
        part=1;
        for jj=1:ii
            part=part*ii;
            if part>=10^10
                part=part-floor(part/(10^10))*(10^10);
            end
        end
        sol=sol+part;
        if sol>=10^10
            sol=sol-floor(sol/(10^10))*(10^10);
        end
    end

    % solution given by direct calculation
    checkSol=0;
    for dd=1:kk
        checkSol=checkSol+dd^dd;
    end
    disp(checkSol)
    if  checkSol>=10^10
        checkSol= checkSol-floor(checkSol/(10^10))*(10^10);
    end