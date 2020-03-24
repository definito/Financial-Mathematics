so=40;
k=40;
T=5/12;
r=0.08;
sigma=0.30;
price=1:250;
for n=25:250;
    deltat=T/n;
    M=exp(r*deltat);
    V=exp(sigma^2*deltat);
    s=sqrt(V^2+2*V-3);
    u=M*V*(V+1+s)/2;
      d=M*V*(V+1-s)/2;
      p=(M-d)/(u-d);
      beta=1/M;
V=binPriceTian(k,so,r,sigma,T/n,n,'PUT',true)
price(n)=V(1,1);
end
plot(25:250,price(25:250))

    