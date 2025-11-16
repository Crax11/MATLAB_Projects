clc;
clear all;
close all;
t=-2:0.01:2

x=rectpuls(t)
x1=rectpuls(2*t)
w=-50*pi:0.01:50*pi

for i=1:length(w)
y(i)=trapz(t, x.*exp(-j*w(i).*t));
y1(i)=trapz(t, x1.*exp(-j*w(i).*t));
%/a(i)=(t, x.*exp(-j*w(i)*t));
end

subplot(4,1,1)
title("Conversion to Magnitude Spectrum",fontsize=18)
subtitle("Rounak Banga-E24ECEU0029",fontsize=18)
plot(t,x,'k',LineWidth=3)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)

subplot(4,1,2)
plot(w,angle(y),'k',LineWidth=3)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)


subplot(4,1,3)
plot(t,x1,'k',LineWidth=3)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)

subplot(4,1,4)
plot(w,angle(y1),'k',LineWidth=3)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)

