clc;
clear all;
close all;

t=0:0.001:20;

x_1=sin(t);
x_2=sin(t-2);
y_1=t.*x_1;
y_2=(t-2).*(x_2);


%subplot(4,1,1)
%plot(x_1)
%subplot(4,1,2)
%plot(x_2)
subplot(2,1,1)
plot(y_3, 'k', LineWidth=3)
ylabel("Amplitude","FontSize",18)
xlabel("Time","FontSize",18)
title("LTI sys","FontSize",18)
subplot(2,1,2)
plot(y_4, 'k',  LineWidth=3)
ylabel("Amplitude","FontSize",18)
xlabel("Time","FontSize",18)
title("LTI sys","FontSize",18)