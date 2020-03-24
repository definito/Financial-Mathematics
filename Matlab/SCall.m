clc
clear all
figure(1);
% // white background of the figure


s=0:100;
plot(s,SCallPayoff(s,50)+5,'LineWidth',2);
legend('call, E=50; price=5');
hold on
text(50,0,'|')
text(50,-2,'K')
text(80,-2,'S_{T }\rightarrow')
plot(s,linea(s),'r','LineWidth',2);
xlabel('stock price'); ylabel('profit');
title('Profit diagram of a call option');
