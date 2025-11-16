clc;
close all;
clear 
sig=-10:0.01:10;
omg=-10:0.01:10;
[SIG,OMG]=meshgrid(sig,omg);
S=SIG+1j*OMG;
plot(real(S),imag(S));
grid on
axis equal
figure;
surf(SIG,OMG,abs(S));
shading interp
colorbar
xlabel("sigma",FontSize=18);
ylabel("omega",FontSize=18);
zlabel("abs(S)",FontSize=18)
