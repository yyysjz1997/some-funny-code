% exp4_17.m
clear
close all
clc
%��ϵͳ�Ŀ������ݺ���num3,den3
num1=[16.7 0];
den1=conv([0.85 1],conv([0.25 1],[0.0625 1]));
[num2,den2]=cloop(num1,den1);
num3=10*num2;
den3=den2;
[z,p,k]=tf2zp(num3,den3);
p
figure(1)
nyquist(num3,den3);
grid
title('nyquist plot')
%���Ƴ弤��Ӧ������֤�ж�
figure(2)
[numc,denc]=cloop(num3,den3);
impulse(numc,denc)
title('impulse response')