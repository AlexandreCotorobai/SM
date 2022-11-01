clear all;
clear clc;

f0 = 1;
Np = 2;
Ta = 0.001;
k = 100;


ind = 1:2:k-1;
bk = zeros(1,k-1);
bk(ind) = 4./(pi*ind);
bk = [0 bk];

ak = zeros(1,length(bk));

[x,t] = execFourier(Ta,f0,Np,ak,bk);

y = square(2*pi*1*t);

plot(t,x);
hold on
plot(t,y);
hold off