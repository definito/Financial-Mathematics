clc
clear all
figure(1);

s=0:80;
plot(s,BullPayoff(s,30,50)-5,'LineWidth',2);
legend('Bull, E1=30;E2=50; price=5');
hold on
plot(s,linea(s),'r','LineWidth',2);
text(30,0,'|')
text(50,0,'|')
text(30,-1,'K1')
text(50,-1,'K2')
text(70,-1,'S_{T }\rightarrow')
xlabel('stock price'); ylabel('profit');
title('Profit diagram of a Bull option');