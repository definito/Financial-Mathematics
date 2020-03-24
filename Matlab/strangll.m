clc
clear all
figure(1);

s=0:80;
plot(s,Strangle(s,30,50)-5,'LineWidth',2);
hold on
legend('Strangle, E1=30;E2=50; price=5'); %One Long Put +One Long Call
% plot(s,PutPayoff(s,30-5)-5,'--g','LineWidth',1);
plot(s,linea(s),'r','LineWidth',2);
text(30,0,'|')
text(50,0,'|')
text(30,1,'K1')
text(50,1,'K2')
text(70,1,'S_{T }\rightarrow')
xlabel('stock price'); ylabel('profit');
title('Profit diagram of a Strangle');