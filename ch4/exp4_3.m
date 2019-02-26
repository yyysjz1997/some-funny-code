clc
clear
close all
%开环传递函数描述
num=[20];
den=[1 8 36 40 0];
%求闭环传递函数
[numc,denc]=cloop(num,den);
%绘制闭环系统的阶跃响应曲线
t=0:0.1:10;
y=step(numc,denc,t);
[y1,x,t1]=step(numc,denc);
%对于传递函数调用，状态变量x返回为空矩阵
plot(t,y,'r:*',t1,y1)
title('the step responce')
xlabel('time-sec')
grid on
%求稳态值
disp('系统稳态值dc为：')
dc=dcgain(numc,denc)
