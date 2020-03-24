function [cp]=SCallPayoff(S,E)
    cp=min(E-S,0);
end

