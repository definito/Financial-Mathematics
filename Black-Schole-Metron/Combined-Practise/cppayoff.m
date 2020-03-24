clc;
clear all;
f=fopen('CPData.txt','w');
f1=fopen('output.txt','w');
[BSCall, BSPut] = blsprice(5,5,.04,.5,.2)
fprintf(f1,'i\t\t   MC-call\t         MC-Put\t         Error%%\r\n');
for i=1:50
    [cpayoff,ppayoff,spot]=callputCombined(5,5,.5,.04,.2,i*1000);
    cp(i)=cpayoff;
    pp(i)=ppayoff;
    sp(i)=spot;
    parity=abs(cp(i)+ 5*exp(-.04*.5)- pp(i)-sp(i))/100;
    fprintf(f1,'%d\t           %3.4f\t         %3.4f\t         %3.4f%% \r\n',i*1000,cp(i),pp(i),parity);
    fprintf(f,'%d\t     %3.4f\t    %3.4f \r\n',i*1000,cp(i),pp(i));
end 
N=[1000:1000:50000];
plot(N,cp)
hold on
plot(N,pp)
legend('Call Payoff','Put Payoff')