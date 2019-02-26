% exp4_18.m
% 对根轨迹进行分析
% 二阶开环系统为H(s)=K/(s*(0.5s+1))
clear
close all
clc
num=1;
den=[0.5 1 0];
%[r,k]=rlocus(num,den);
rlocus(num,den);
text(0.1,0.1,'k=0');
text(-0.9,0.1,'k=0.5');
