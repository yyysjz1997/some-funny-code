clc
clear
close
%开环传递函数描述
numo=20;
deno=[1 8 36 40 0];
%求闭环传递函数
[numc,denc]=cloop(numo,deno,-1);
%绘制闭环系统的脉冲激励响应曲线
t=1:0.1:10;
[y,x]=impulse(numc,denc,t);
plot(t,y)
title('the impulse responce')
xlabel('time-sec')
grid on
