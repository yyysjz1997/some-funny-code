theta = -10 * pi : 0.1 : 10 * pi;
x = cos(theta);
y = sin(theta);
z = theta;

h = plot3(x, y, z);

axis([-2, 2, -2, 2, -10 * pi, 10 * pi]);  %≤ª»√◊¯±Í÷·“∆∂Ø

while true
    for i = 1 : 100
        z = z * 0.98;
        set(h, 'xData', x, 'yData', y, 'zData', z);

        drawnow;
    end

    for i = 1 : 100
        z = z / 0.98;
        set(h, 'xData', x, 'yData', y, 'zData', z);

        drawnow;
    end
end