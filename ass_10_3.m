clc;
clear all;
close all;
t=-2:0.01:2

x=rectpuls(t)
x1=rectpuls(t-2)
w=-50*pi:0.01:50*pi

for i=1:length(w)
y(i)=trapz(t, x.*exp(-j*w(i).*t));
y1(i)=trapz(t, x1.*exp(-j*w(i).*t));
a(i)=y(i).*exp(-j*w(i).*2);
end

subplot(5,1,1)
plot(t,x,'k',LineWidth=2)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)

subplot(5,1,2)
plot(w,angle(y),'k',LineWidth=2)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)


subplot(5,1,3)
plot(t,x1,'k',LineWidth=2)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)

subplot(5,1,4)
plot(w,angle(y1),'k',LineWidth=2)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)

subplot(5,1,5)
plot(w,angle(a),'k',LineWidth=2)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)

