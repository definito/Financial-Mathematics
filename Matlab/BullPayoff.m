function [pp]=BullPayoff(S,E1,E2)
    pp=max(S-E1,0)-max(S-E2,0);
end