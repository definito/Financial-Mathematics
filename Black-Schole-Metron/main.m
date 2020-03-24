clc; clear all;

file_id=fopen('data1.txt','w');
file_id2=fopen('data2.txt','w');

j=1;
for i=1000:1000:50000
call(j)=BSMCcall(5,5,0.5,0.04,0.2,i);
put(j)=BSMCcall(5,5,0.5,0.04,0.2,i);
fprintf(file_id,'%7.0f  %7.5f \r\n',i, double(call(j)));
fprintf(file_id2,'%7.0f  %7.5f \r\n',i, double(put(j)));
j=j+1;
end
fclose(file_id);
N=1000:1000:50000;
plot(N,call,':r')
hold on;
plot(N,put)