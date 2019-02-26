%plot绘图命令的使用
clc    %清屏命令
clear  %清除工作空间中所有变量
%定义时间范围
t=[0:pi/20:9*pi];
y1=sin(t);
y2=cos(t);
plot(t,y1,t,y2)

