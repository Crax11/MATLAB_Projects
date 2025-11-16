clc;
clear all;
close all;
t=0:0.01:10;

x=sin(t);
y=sin(-t);
even=(x+y)/2;
odd=(x-y)/2;
result=even+odd;

subplot(5,1,1)
plot(t, x,'k',LineWidth=2);
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("cos(t)", FontSize=18);
legend("cos(t)");

subplot(5,1,2)
plot(t, y,'k',LineWidth=2);
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("cos(-t)", FontSize=18);
legend("cos(-t)");

subplot(5,1,3)
plot(t, even,'k',LineWidth=2);
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("Even", FontSize=18);
legend("Even");

subplot(5,1,4)
plot(t, odd,'k',LineWidth=2);
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("odd", FontSize=18);
legend("odd");

subplot(5,1,5)
plot(t, result,'k',LineWidth=2);
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("result", FontSize=18);
legend("result");