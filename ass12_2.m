clc;
close all;
clear 
% sig=-10:0.01:10;
% omg=-10:0.01:10;
% [SIG,OMG]=meshgrid(sig,omg);
% S=SIG+1j*OMG;
% plot(real(S),imag(S));
% grid on
% axis equal
poles=[2+3j -3j 4]
zeros=[2 9]
plot(real(poles),imag(poles),'rx',MarkerSize=12,LineWidth=2);
hold on
plot(real(zeros),imag(zeros),'bo',MarkerSize=12,LineWidth=2);
legend("poles","zeros");
grid on
ylabel("Omega",FontSize=18);
xlabel("Sigma",FontSize=18);
title("Plotting Poles and Zeros in S-plane",FontSize=18)
subtitle("Rounak Banga - E24ECEU0029",FontSize=18)