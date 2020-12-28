function y=cE(A,PA)
    y=0;
    value=zeros(1,size(A,2));
    for ii=1:size(A,2)
        value(ii)=A(ii)*PA(ii);
    end
    y=Integral(A,value,-1000000,100000);
end
    