function [A,PA]=Uniform(a,b)
    A=linspace(a,b,10^7);
    PA=(1/(b-a))*ones(1,10^7);
end