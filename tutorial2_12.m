x = -2 * pi : 0.1 : 2 * pi;
y = sin(x);

h = plot(x, y);

while true
    x = x + 0.1;
    y = sin(x);
    set(h , 'xData' , x , 'yData' , y);
    drawnow;
end