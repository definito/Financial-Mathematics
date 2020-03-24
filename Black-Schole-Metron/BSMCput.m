function y1=BSMCput(S0,K,T,r,sigma,N) 
tic();

phi=rand(1,N,'double');
dt=T;
for i=1:N
   S(i)=S0*exp((r-0.5*sigma.^2)*dt+sigma*phi(i)*sqrt(dt));
   C(i)=exp(-r*T)*max(K-S(i),0);
end
y1=sum(C)/N;

end


% function y=BSMCcall(S0,K,T,r,sigma,M) 
% %stacksize('max')
% tic();
% X=rand(1,M,'double');
% S=S0*exp((r-0.5*sigma.^2)*T+sigma*X*sqrt(T));
% %S=S0*exp(sigma*sqrt(T)*X+(r-sigma.^2)*T);
% C=exp(-r*T)*max(K-S,0);
% price=sum(C)/M;
% VarEst=sum((C-price).^2)/(M-1);
% RMSE=sqrt(VarEst)/sqrt(M);
% CI95=[price-1.96*RMSE,price+1.96*RMSE];
% CI99=[price-2.58*RMSE,price+2.58*RMSE];
% time=toc();
% y=[price time RMSE; CI95 0; CI99 0]
% end