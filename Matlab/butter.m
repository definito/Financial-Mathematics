clc
clear all
figure(1);

s=0:80;
plot(s,ButterPayoff(s,30,40,50)-5,'LineWidth',2);
legend('Butterfly, E1=30;E2=40;E3=50; price=5');
hold on
text(30,0,'|')
text(40,0,'|')
text(50,0,'|')
text(30,-1,'K1')
text(40,-1,'K2')
text(50,-1,'K3')
text(70,-.5,'S_{T }\rightarrow')
plot(s,linea(s),'r','LineWidth',2);
xlabel('stock price'); ylabel('profit');
title('Profit diagram of a Butterfly option');