clc
clear all
figure(1);

s=0:100;
plot(s,PutPayoff(s,50)-5,'LineWidth',2);
legend('Put, E=50; price=5');
hold on
plot(s,linea(s),'r','LineWidth',2);
text(50,0,'|')
text(50,-2,'K')
text(80,-2,'S_{T }\rightarrow')
xlabel('stock price'); ylabel('profit');
title('Profit diagram of a Put option');
