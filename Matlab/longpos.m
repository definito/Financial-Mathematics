x=5:15;
%s=x-10;
y=0*x;
plot(x,y,'k-','linewidth',2)
hold on
%x=0*y
%plot(x,y,'k-','linewidth',2)
hold on

s=(x-10);
%plot(x,s,'-','linewidth',2)
s1=x-10;
hold on
plot(x,s1,'r-','linewidth',2)
hold on
%plot(x,s2,'b-','linewidth',2)
%legend('two share','short one call','combination',0)
axis([5 15  -5  5])
%grid on
text(10,-.5,'k')
text(10,0,'|')
xlabel('stock price (S_T)')
ylabel('payoff')
