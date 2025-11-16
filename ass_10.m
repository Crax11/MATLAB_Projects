clc;
clear all;
close all;

t=-10:0.01:10

%x=cos(2*pi*t)
x=rectpuls(t)
w=(-10:0.01:10)*pi

for i=1:length(w)
y(i)=trapz(t, x.*exp(-j*w(i).*t))
end
subplot(2,1,1)
plot(t,x,'k',LineWidth=3)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)
title("Original signal (cos(wt))", FontSize=18)
subtitle("Rounak Banga-E24ECEU0029", FontSize=18)
subplot(2,1,2)
plot(w,abs(y),'k',LineWidth=3)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)
title("Fourier transform of cos(wt)", FontSize=18)
subtitle("Rounak Banga-E24ECEU0029", FontSize=18)