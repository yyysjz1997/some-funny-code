clear
clc
close all
t0=0;
tfinal=15;
x0=[0.5;0]; %��ʼ������е���Ϊ0�����ݵ�ѹΪ0.5v
%tol=0.001; %��ֵ���㾫��
[t,x]=ode45('elecsys',t0,tfinal,x0);
%elecsys��ϵͳ΢�ַ��̵���������
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

