clc
clear
close all
%�������ݺ�������
num=[20];
den=[1 8 36 40 0];
%��ջ����ݺ���
[numc,denc]=cloop(num,den);
%���Ʊջ�ϵͳ�Ľ�Ծ��Ӧ����
t=0:0.1:10;
y=step(numc,denc,t);
[y1,x,t1]=step(numc,denc);
%���ڴ��ݺ������ã�״̬����x����Ϊ�վ���
plot(t,y,'r:*',t1,y1)
title('the step responce')
xlabel('time-sec')
grid on
%����ֵ̬
disp('ϵͳ��ֵ̬dcΪ��')
dc=dcgain(numc,denc)
