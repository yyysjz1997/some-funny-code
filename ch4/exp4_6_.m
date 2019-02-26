clc
clear
close all
%系统传递函数为G(s)=1/[(s^2+0.1s+5)(s^3+2s^2+3s+4)]
num=1;
den=conv([1 0.1 5],[1 2 3 4]);
%绘制系统的阶跃响应曲线
t=0:0.1:40;
y=step(num,den,t);
t1=0:1:40;
y1=step(num,den,t1);
plot(t,y,'r',t1,y1)
grid on