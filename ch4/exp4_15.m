% exp4_15.m
clear
close all
clc
% 状态空间系统描述
a=[-0.6 -1.04 0 0;1.04 0 0 0;0 0.96 -0.7 -0.32;
   0 0 0.32 0];
b=[1 0 0 0]';
c=[0 0 0 0.32];
d=0;
% 图1绘制波特图
figure(1)
bode(a,b,c,d);
% 图2绘制幅相曲线
figure(2)
subplot(211)
nyquist(a,b,c,d);
[z,p,k]=ss2zp(a,b,c,d);
p
subplot(212)
[rm,im]=nyquist(a,b,c,d);
plot(rm,im)
% 图3绘制带裕度及相应频率显示的波特图
figure(3)
margin(a,b,c,d);
% 图4绘制冲激响应曲线
figure(4)
[ac,bc,cc,dc]=cloop(a,b,c,d);
impulse(ac,bc,cc,dc)
