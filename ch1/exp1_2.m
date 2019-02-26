%问题：已知典型二阶系统的传递函数为G(s)=wn^2/(s^2+2*i*wn+wn^2),试绘制当wn=4时，
%i分别为0.1，0.2，...，1.0，2.0时的系统的单位阶跃响应。
close
clear
clc
wn=4;
kosai=[0.5,1];
figure(1)
hold on
for i=kosai
   num=wn*wn;
   den=[1 2*i*wn wn*wn];
   den1 = 1;
   num1 = 2;
   step(num1,den1);
end
title('the step responce of two order system');