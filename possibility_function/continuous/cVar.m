function z=cVar(A,PA)
    value=zeros(1,size(A,2));
    for ii=1:size(A,2)
        value(ii)=(A(ii)^2)*PA(ii);
    end
    y1=Integral(A,value,-1000000,100000);
    y2=cE(A,PA);
    z=y1-y2^2;
end
