clc
clear
close all;
T=2;
w=(2*pi)/T;
n=0:0.01:10;
x=square(w.*n,50);
N=100;
k=1:N;
syms t;
a0=(1/T).*(int(1,t,0,1)+(int(-1,t,1,2)));
ak=(2/T).*(int(cos(k.*w.*t),t,0,1)+(int(-cos(k.*w.*t),t,1,2)));
bk=(2/T).*(int(sin(k.*w.*t),t,0,1)+(int(-sin(k.*w.*t),t,1,2)));
y=a0;
for i=1:N
    y = y + ak(i) * cos(i * w * n) + bk(i) * sin(i * w * n);
end
subplot(2,1,1);
plot(n,x,'k','LineWidth',3);
xlabel("Time",'FontSize',18);
ylabel("Amplitude",'FontSize',18);
title("Square Wave",'FontSize',18);
subtitle("E24ECEU0029",'FontSize',18);
subplot(2,1,2);
plot(n,y,'k','LineWidth',3);
xlabel("Time",'FontSize',18);
ylabel("Amplitude",'FontSize',18);
title("Fourier Series Approximation",'FontSize',18);
