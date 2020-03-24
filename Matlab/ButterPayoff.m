function [pp]=ButterPayoff(S,E1,E2,E3)
    pp=max(S-E1,0)+max(S-E3,0)-2*max(S-E2,0);
end

