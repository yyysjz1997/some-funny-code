x = -4 : 0.1 : 4;

y1 = sin (x);
y2 = sin (2 .* x);
y3 = sin (3 .* x);
y4 = sin (4 .* x);
y5 = sin (5 .* x);
y6 = sin (6 .* x);

subplot(2, 3, 1);
plot(x, y1);
title('y = sin(x)');
grid on;  %加网格
xlabel('x-axis');
ylabel('y1-axis');

subplot(2, 3, 2);
plot(x, y2);
title('y = sin(2x)');
grid on;  %加网格
xlabel('x-axis');
ylabel('y2-axis');

subplot(2, 3, 3);
plot(x, y3);
title('y = sin(3x)');
grid on;  %加网格
xlabel('x-axis');
ylabel('y3-axis');

subplot(2, 3, 4);
plot(x, y4);
title('y = sin(4x)');
grid on;  %加网格
xlabel('x-axis');
ylabel('y4-axis');

subplot(2, 3, 5);
plot(x, y5);
title('y = sin(5x)');
%grid on;  %加网格
xlabel('x-axis');
ylabel('y5-axis');

subplot(2, 3, 6);
plot(x, y6);
title('y = sin(6x)');
grid on;  %加网格
xlabel('x-axis');
ylabel('y6-axis');