clc
clear
close
%系统传递函数描述
wn=5;
alfh=0.6;
num=wn^2;
den=[1 2*alfh*wn wn^2];
%绘制闭环系统的阶跃响应曲线
t=0:0.02:5;
y=step(num,den,t);
plot(t,y)
title('two orders linear system step responce')
xlabel('time-sec')
ylabel('y(t)')
grid on
