clc
clear all
close all
t=-10:0.02:10;
for i=1: length(t)
   if t(i)>=0
    impulse(i)=1;
   else
     impulse(i)=0;
   end
end

subplot(2,1,1)
stem(t, impulse,'k');
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("Unit Step", FontSize=18);
legend("Discrete Pulse");

subplot(2,1,2)
plot(t,impulse,'k',"LineWidth",3);
ylabel("Amplitude", FontSize=18);
xlabel("Time",FontSize=18);
title("Unit Step", FontSize=18);
legend("Continous Pulse");