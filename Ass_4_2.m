clc;
clear all;
close all;
t=-2:1:2;
x=[1 2 0 1 -2];
x_rev=fliplr(x);

even=(x+x_rev)/2;
odd=(x-x_rev)/2;

z=(odd+even)/2;

subplot(5,1,1)
stem(t, x,'k',LineWidth=3);
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("original signal", FontSize=18);
legend("original signal");

subplot(5,1,2)
stem(t, x_rev,'k',LineWidth=3);
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("reveresed signal", FontSize=18);
legend("reveresed signal");

subplot(5,1,3)
stem(t, even,'k',LineWidth=3);
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("Even", FontSize=18);
legend("Even");

subplot(5,1,4)
stem(t, odd,'k',LineWidth=3);
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("odd", FontSize=18);
legend("odd");

subplot(5,1,5)
stem(t, z,'k',LineWidth=3);
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("result", FontSize=18);
legend("result");