clear
clc
close all
t0=0;
tfinal=15;
x0=[0.5;0]; %初始化，电感电流为0，电容电压为0.5v
%tol=0.001; %数值计算精度
[t,x]=ode45('elecsys',t0,tfinal,x0);
%elecsys是系统微分方程的描述函数
figure(1)
subplot(211)
plot(t,x(:,1))
title('capacitor voltage')
xlabel('time-sec')
subplot(212)
plot(t,x(:,2))
title('current of L')
xlabel('time-sec')
figure(2)
vc=x(:,1);
i=x(:,2);
plot(vc,i);
title('current versus capacitor voltage')
xlabel('capacitor voltage')
ylabel('current')

