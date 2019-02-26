%根轨迹图的绘制
clc
clear
close all
%已知系统的状态空间描述模型
a=[0 3;-3 -1];
b=[0 1]';
c=[1 3];d=2;
subplot(211)
rlocus(a,b,c,d)
%已知系统传递函数模型
num=[2 4];
den=[8 3 1 0];
subplot(212)
rlocus(num,den)
[r,k]=rlocus(num,den);
disp('r的维数')
size(r)


