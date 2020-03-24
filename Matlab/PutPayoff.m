function [pp]=PutPayoff(S,E)
    pp=max(E-S,0);
end

