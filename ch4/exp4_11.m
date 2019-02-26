%exp4_11.m
%已知系统的传递函数为：G(s)=K/(s^3+52s^2+100^s)
%求当K分别取1300和5200时，系统的极坐标频率特性图
clear
close all
clc
k1=1300;
k2=5200;
w=8:1:80;
num1=k1;
num2=k2;
den=[1 52 100 0];
figure(1)
subplot(211)
nyquist(num1,den);
subplot(212)
pzmap(num1,den);
figure(2)
subplot(211)
nyquist(num2,den,w);
subplot(212)
[rm,im,w2]=nyquist(num2,den);
plot(rm,im)
xlabel('real')
ylabel('image')
title('w from 0 to 正无穷')
figure(3)
[numc,denc]=cloop(num2,den);
subplot(211)
step(numc,denc)
subplot(212)
[numc1,denc1]=cloop(num1,den);
step(numc1,denc1)
