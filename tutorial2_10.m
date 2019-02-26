x = -4 : 0.1 : 4;

y1 = cos (x);
y2 = cos (2 .* x);
y3 = cos (4 .* x);

subplot(2, 2, 1);
plot(x, y1);
title('y = cos(x)');
grid on;  %加网格
xlabel('x-axis');
ylabel('y1-axis');

subplot(2, 2, 2);
plot(x, y2);
title('y = cos(2x)');
grid on;  %加网格
xlabel('x-axis');
ylabel('y2-axis');

subplot(2, 2, [3, 4]);
plot(x, y3);
title('y = cos(4x)');
grid on;  %加网格
xlabel('x-axis');
ylabel('y3-axis');

