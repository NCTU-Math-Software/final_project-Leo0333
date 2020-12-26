function y=Integral(A,PA,a,b)
    detx=A(2)-A(1);
    y=0;
    if a==b
        y=0;
    elseif a<=A(1) && b<=A(1)
        y=0;
    elseif a>=A(size(A,2)) && b>=A(size(A,2))
        y=0;
    elseif a<b
        for ii=1:size(A,2)
            if A(ii)>a && A(ii)<=b
                y=y+PA(ii)*detx;
            end
        end
     elseif b<a
         for ii=1:size(A,2)
            if A(ii)>=b && A(ii)<=a
                y=y+PA(ii)*detx;
            end
         end
         y=-y;
    end
end