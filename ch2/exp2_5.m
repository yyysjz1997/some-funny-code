%绘制单位圆
clear
close all
clc
%定义时间范围
t=[0:0.01:2*pi];
x=sin(t);
y=cos(t);
plot(x,y)
axis([-1.5 1.5 -1.5 1.5])
%限定x轴和y轴的显示范围
grid on
axis('equal')