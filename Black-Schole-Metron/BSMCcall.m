function y=BSMCcall(S0,K,T,r,sigma,N) 
tic();

phi=rand(1,N,'double');
dt=T;
for i=1:N
   S(i)=S0*exp((r-0.5*sigma.^2)*dt+sigma*phi(i)*sqrt(dt));
   C(i)=exp(-r*T)*max(S(i)-K,0);
end
y=sum(C)/N;

end