x = 0.2:0.01:5;
y1 = (exp(x) + exp(-x) - 2*cos(x));
y3 = (exp(x) - exp(-x) - 2*sin(x));
 hold on

plot(x,y1./y3);
y2 = 3 ./ x;
plot(x,y2);