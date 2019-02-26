clc
clear
close all
a=[-21,19,-20;19 -21 20;40 -40 -40];
b=[0;1;2];
c=[1 0 2];
d=0;
%绘制闭环系统的阶跃响应曲线
%g=ss(a,b,c,d);
%[y,t,x]=step(g);
[y,x,t]=step(a,b,c,d);
figure(1)
plot(t,y)
title('the step responce')
xlabel('time-sec')
figure(2)
%绘制状态变量的轨迹
plot(t,x)
legend('x1','x2','x3')
