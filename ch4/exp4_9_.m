% exp4_9_.m
% 计算系统瞬态性能指标（稳态误差允许正负2％）
% 已知系统G(s)=3/(s+1+3i)(s+1-3i)
clc
clear
% 系统模型建立
num=3;
den=conv([1 1+3i],[1 1-3i]);
% 求系统的单位阶跃响应
[y,x,t]=step(num,den);
% 求响应的稳态值
finalvalue=dcgain(num,den)
% 求响应的峰值及对应的下标
[yss,n]=max(y);
% 计算超调量及峰值时间
percentovershoot=100*(yss-finalvalue)/finalvalue
timetopeak=t(n)
% 计算上升时间
n=1;
while y(n)<0.1*finalvalue
   n=n+1;
end
m=1;
while y(m)<0.9*finalvalue
   m=m+1;
end
risetime=t(m)-t(n)
% 计算调整时间
k=length(t);
while (y(k)>0.98*finalvalue)&(y(k)<1.02*finalvalue)
   k=k-1;
end
settlingtime=t(k)
