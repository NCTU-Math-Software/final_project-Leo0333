function y=dE(A,PA)
    y=0;
    for ii=1:size(A,2)
        y=y+A(ii)*PA(ii);
    end
end