function p=Pcdf(A,PA,a)
    p=0;
    for ii=1:size(A,2)
       if A(ii)<=a
           p=p+PA(ii);
       end
    end
end
           
        
