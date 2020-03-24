clc
clear all

% Longcall
subplot(2,2,1);
% // white background of the figure
s=0:100;
plot(s,CallPayoff(s,50)-5,'LineWidth',2);

hold on
text(50,0,'|')
text(50,4,'K')
text(80,4,'S_{T }\rightarrow')
plot(s,linea(s),'r','LineWidth',2);
xlabel('Stock price'); ylabel('Payoff');

% Shortcall

subplot(2,2,2)
s=0:100;
plot(s,SCallPayoff(s,50)+5,'LineWidth',2);

hold on
text(50,0,'|')
text(50,-4,'K')
text(80,-4,'S_{T }\rightarrow')
plot(s,linea(s),'r','LineWidth',2);
xlabel('Stock price'); ylabel('Payoff');


% Longput
subplot(2,2,3)
s=0:100;
plot(s,PutPayoff(s,50)-5,'LineWidth',2);
hold on
plot(s,linea(s),'r','LineWidth',2);
text(50,0,'|')
text(50,4,'K')
text(80,4,'S_{T }\rightarrow')
xlabel('Stock price'); ylabel('Payoff');


% Shortput
subplot(2,2,4)
s=0:100;
plot(s,SPutPayoff(s,50)+5,'LineWidth',2);
hold on
text(50,0,'|')
text(50,-4,'K')
text(80,-4,'S_{T }\rightarrow')
plot(s,linea(s),'r','LineWidth',2);
xlabel('Stock price'); ylabel('Payoff');










