function [pp]=Strangle(S,E1,E2)
    pp=max(S-E2,0)+max(E1-S,0);
end

