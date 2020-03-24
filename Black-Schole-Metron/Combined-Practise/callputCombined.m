function [cpay,ppay,spot] = callputCombined(S0,K,T,r,sigma,N)
%CALLPUT Summary of this function goes here
%   Detailed explanation goes here
phi=randn([1,N]);
dT=T;
for i=1:N
    S(i)=S0*exp((r-.5*sigma.^2)*dT + sigma*sqrt(dT)*phi(i));
    C(i)= exp(-r*T)*max(S(i)-K, 0);
    P(i)=exp(-r*T)*max(K-S(i), 0);
  
end 
price1=sum(C)/N;
price2=sum(P)/N;
cpay=price1;
ppay=price2;
spot=sum(S)/N;
end

