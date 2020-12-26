function z=dVar(A,PA)
    [B,PB]=ranVar(A,PA,@square1);
    y1=dE(B,PB);
    y2=dE(A,PA);
    z=y1-(y2^2);
end