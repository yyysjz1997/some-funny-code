%根轨迹图的绘制
clc
clear
close all
%已知系统开环传递函数模型
num=1;
den=conv([0.01 1 0],[0.02 1]);
rlocus(num,den)
[k1,p]=rlocfind(num,den)
[k2,p]=rlocfind(num,den)

title('root locus')


