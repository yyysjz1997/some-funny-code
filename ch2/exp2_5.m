%���Ƶ�λԲ
clear
close all
clc
%����ʱ�䷶Χ
t=[0:0.01:2*pi];
x=sin(t);
y=cos(t);
plot(x,y)
axis([-1.5 1.5 -1.5 1.5])
%�޶�x���y�����ʾ��Χ
grid on
axis('equal')