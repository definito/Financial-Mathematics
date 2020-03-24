clc
clear all
T = 1;
for i=1:3
N = i*100;
dt = T/N;
dW = zeros(1,N);             % preallocate arrays ...
W = zeros(1,N);              % for efficiency

dW(1) = sqrt(dt)*randn;      % first approximation outside the loop ...
W(1) = dW(1);                % since W(0) = 0 is not allowed
for j = 2:N
   dW(j) = sqrt(dt)*randn;   % general increment
   W(j) = W(j-1) + dW(j); 
end
subplot(2,3,i)
plot([0:dt:T],[0,W],'b-')    % plot W against t
hold on 
x=[0:T];
y=x-x;
plot([0:T],y,'b-')
xlabel('t','FontSize',12) 
ylabel('W(t)','FontSize',12,'Rotation',0)
end 


