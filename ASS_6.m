clc;
clear all;
close all;

a=3;

b=5;

t=0:0.001:20;

x_1=a.*sin(t);
y_1=t.*x_1;

x_2=b.*cos(t);
y_2=t.*x_2;

x_3=x_1+x_2;
y_3=t.*x_3;

y_4=y_1+y_2;

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