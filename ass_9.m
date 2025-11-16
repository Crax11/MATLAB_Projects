clc;
clear all;
close all;

x=[-4 9 -7 0]
a=[0 0 0 0]
N=4

for k=1:4
for n=1:4

a(k)=a(k)+x(n)*exp(-j*(k-1)*(n-1)*2*pi/N)

end 
a(k)=1/4*(a(k))
end

avg_pow_1=0
avg_pow_2=0
for n=1:4
avg_pow_1=avg_pow_1+(x(n))^2
avg_pow_2=avg_pow_2+(abs(a(k))^2)
end
avg_pow_1=avg_pow_1/4

subplot(2,1,1)
stem(x,'k',linewidth=3)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)
title("Input Signal",FontSize=18)
subtitle("Rounak Banga-E24ECEU0029",FontSize=18)

subplot(2,1,2)
stem(a,'k',linewidth=3)
ylabel("Amplitude", FontSize=18)
xlabel("Time", FontSize=18)
title("Input Signal",FontSize=18)
subtitle("Rounak Banga-E24ECEU0029",FontSize=18)
