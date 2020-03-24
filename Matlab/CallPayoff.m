function [cp]=CallPayoff(S,E)
    cp=max(S-E,0);
end

