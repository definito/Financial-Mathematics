clc
clear all
figure(1);
% // white background of the figure


s=0:100;
plot(s,Spos(s,50),'LineWidth',2);

hold on
text(50,0,'|')
text(50,-4,'K')
text(80,-4,'S_{T }\rightarrow')
plot(s,linea(s),'r','LineWidth',2);
xlabel('stock price'); ylabel('Payoff');

