%根轨迹图的绘制与分析
clc
clear
close all
%已知系统传递函数模型
numo=[1 2];
den=[1 4 3];
deno=conv(den,den);
figure(1)
k=0:0.1:150;
rlocus(numo,deno,k)
title('root locus')
[p,z]=pzmap(numo,deno);
%求出系统临界稳定增益
[k,p1]=rlocfind(numo,deno);
k
%验证系统的稳定性
figure(2)
subplot(211)
k=55;
num2=k*[1 2];
den=[1 4 3];
den2=conv(den,den);
[numc,denc]=cloop(num2,den2,-1);
impulse(numc,denc)
title('impulse response k=55');
subplot(212)
k=56;
num3=k*[1 2];
den=[1 4 3];
den3=conv(den,den);
[numcc,dencc]=cloop(num3,den3,-1);
impulse(numcc,dencc)
title('impulse response k=56');


