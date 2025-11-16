clc;
clear all;
close all;

w=0:0.05:2*pi;
r=1;

z_poles=r*exp(j*w)

plot(real(z_poles),imag(z_poles))
ylabel("imag(z)","FontSize",18)
xlabel("real(z)","FontSize",18)
title("z-plane","FontSize",18)
subtitle("Rounak Banga E24ECEU0029","FontSize",18)
grid on;
axis equal;
