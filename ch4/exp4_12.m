%exp4_12.m
%margin函数通常用在bode函数之后，先由bode函数得到
%幅值、相角和频率矢量，然后由margin绘制出幅值裕度
%和相角裕度的波特图。
clear
clc
close all
%某系统的开环传递函数为：G(s)=k/s(s+1)(0.2s+1)
%求k分别为2和20时的幅值裕度与相角裕度
num1=2;num2=20;
den=conv([1 0],conv([1 1],[0.2 1]));
w=logspace(-1,2,100);
figure(1)
[mag1,pha1]=bode(num1,den,w);
margin(mag1,pha1,w)
figure(2)
[mag2,pha2]=bode(num2,den,w);
margin(mag2,pha2,w)
[m1,p1,wm,wp]=margin(mag2,pha2,w)

