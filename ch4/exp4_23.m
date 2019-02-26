% 系统开环传递函数为G(s)=k/s(s+1)(s+2)
% 试寻找一个合适的k值使得闭环系统具有较理想的阶跃响应。
% 开环系统描述
clc
clear
close all
num=1;
den=conv([1 0],conv([1 1],[1 2]));
z=[0.1:0.2:1];
wn=[1:6];
sgrid(z,wn);
text(-0.3,2.4,'z=0.1')
text(-0.8,2.4,'z=0.3')
text(-1.2,2.1,'z=0.5')
text(-1.8,1.8,'z=0.7')
text(-2.2,0.9,'z=0.9')

% 通过sgrid指令可以绘出指定阻尼比z和自然振荡频率wn的
% 栅格线
hold on
rlocus(num,den)
axis([-4 1 -4 4])
[k,p]=rlocfind(num,den)
% 由控制理论知，离虚轴近的稳定极点对整个系统的响应贡献大
% 通过rlocfind，配合前面所画的z及wn栅格线
% 从而可以找出能产生主导极点阻尼比z=0.707的合适增益
[numc,denc]=cloop(k,den);
figure(2)
step(numc,denc)
