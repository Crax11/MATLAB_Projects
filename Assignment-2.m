clc
clear all
close all
t=-10:0.02:10;
for i=1: length(t)
   if t(i)==0
    impulse(i)=1;
   else
     impulse(i)=0;
   end
end
plot(t,impulse)
hold on
stem(t, impulse)