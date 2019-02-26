clc
clear
close
%系统传递函数描述
num=[10 25];
den=[0.16 1.96 10 25];
%绘制闭环系统的阶跃响应曲线
t=0:0.02:5;
y=step(num,den,t);
plot(t,y)
xlabel('time-sec')
ylabel('y(t)')
grid on
