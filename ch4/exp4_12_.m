%exp4_12_.m
%margin函数通常用在bode函数之后，先由bode函数得到
%幅值、相角和频率矢量，然后由margin绘制出增益裕度
%和相角裕度的波特图。
clear
clc
close all
%定义二阶系统，G(s)=1/(s^2+2*kosi*wn*s+wn^2)
[a,b,c,d]=ord2(1,0.2);
[mag,pha,w]=bode(a,b,c,d);
margin(mag,pha,w)


