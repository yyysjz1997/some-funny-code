t = 0 : pi/200 : 2 * pi;
x = cos(t);
y = sin(t);
plot(x, y);

axis equal; %ʹ��ΪԲ��������Բ

hold on;

LineX = [0, 1];
LineY = [0, 0];
h = plot(LineX, LineY);

theta = 0;
while true
    theta = theta + 0.05;
    LineX(2) = cos(theta);
    LineY(2) = sin(theta);
    set(h, 'xData', LineX, 'yData', LineY);
    drawnow;
end
