clc;
clear all;
close all;

w=0:0.05:2*pi;
r=1;
T=0.1;


s_poles=[-5+2j, -2+5j, -1, 0, 1+2j];
z_poles=exp(s_poles*T)

subplot(1,2,1)
z=r*exp(j*w);
plot(real(z),imag(z));
hold on
plot(real(z_poles),imag(z_poles),'rx',MarkerSize=12,LineWidth=2);
axis equal;
grid on;
hold on



subplot(1,2,2)
plot(real(s_poles),imag(s_poles),'rx',MarkerSize=12,LineWidth=2);
axis equal;
grid on
ylabel("Omega",FontSize=18);
xlabel("Sigma",FontSize=18);

for k= 1:length(s_poles)
    subplot(1,2,1)
    text(real(z_poles(k))+0.1,imag(z_poles(k)),sprintf("z_%d",k),FontSize=13);
    subplot(1,2,2)
    text(real(s_poles(k))+0.2,imag(s_poles(k)),sprintf("s_%d",k),FontSize=13)
end