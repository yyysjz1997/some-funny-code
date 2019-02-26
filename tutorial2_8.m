x1 = -5 : 0.1 : 5;
y1 = x1 .* x1;
plot(x1, y1);

hold on;

x2 = -5 : 0.1 : 5;
y2 = x2 .* x2 .* x2;
plot(x2, y2);

%axis equal;

grid on;  %¼ÓÍø¸ñ
title('x^2 vs x^3');
xlabel('x-axis');
ylabel('y-axis');

