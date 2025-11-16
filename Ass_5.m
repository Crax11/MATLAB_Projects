clc;
clear all;
close all;

x = [1 3 2 -2 3];
y = [1 2 3];

out_len = length(x) + length(y) - 1;
z = zeros(1, out_len);

for i = 1:length(x)
    for j = 1:length(y)
        z(i+j-1) = z(i+j-1) + x(i) * y(j);
    end
end

subplot(3,1,1)
stem(x, 'LineWidth', 3, 'Color', 'k')
title('Signal x', 'FontSize', 13)
xlabel('Time', 'FontSize', 13)
ylabel('Amplitude', 'FontSize', 13)
set(gca, 'FontSize', 13)

subplot(3,1,2)
stem(y, 'LineWidth', 3, 'Color', 'k')
title('Signal y', 'FontSize', 13)
xlabel('Time', 'FontSize', 13)
ylabel('Amplitude', 'FontSize', 13)
set(gca, 'FontSize', 13)

subplot(3,1,3)
stem(z, 'LineWidth', 3, 'Color', 'k')
title('Convolution Output z', 'FontSize', 13)
xlabel('Time', 'FontSize', 13)
ylabel('Amplitude', 'FontSize', 13)
set(gca, 'FontSize', 13)
