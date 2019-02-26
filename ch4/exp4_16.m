% exp4_16.m
clear
close all
clc
%�����ݺ���ģ��
num=[1 1];
den=conv([1 2],conv([1 2],[1 2]));
w=logspace(-1,2);
t=0.5;
%�������ݺ���ģ�͵�Ƶ����Ӧ
[mag1,pha1]=bode(num,den,w);
%��ϵͳ�ĵ�Ч���ݺ���
[n2,d2]=pade(t,4);
numt=conv(n2,num);
dent=conv(d2,den);
%��ϵͳ��Ƶ����Ӧ
[mag2,pha2]=bode(numt,dent,w);
%��ͬһ��ͼ�ϻ���Ƶ����Ӧ����
subplot(211)
semilogx(w,20*log10(mag1),w,20*log10(mag2),'r--');
title('bode plot')
xlabel('frequency-rad/s');
ylabel('gain db');
grid on
subplot(212)
semilogx(w,pha1,w,pha2,'r--');
xlabel('frequency-rad/s');
ylabel('phase deg');
grid on
