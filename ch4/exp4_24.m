%某控制系统的开环传递函数，G(s)=k(s+1)/s^2(s+2)(s+4)
%要求分别绘制正反馈系统和负反馈系统的根轨迹
%指出它们的稳定性情况有什么不同
%


clc
clear
close all
%绘制常规根轨迹图
subplot(211)
num=[1 1];
den=conv([1 0 0],conv([1 2],[1 4]));
rlocus(num,den)

%绘制零度根轨迹图
subplot(212)
num1=-num;
den1=den;
rlocus(num1,den1)
