% exp4_15.m
clear
close all
clc
% ״̬�ռ�ϵͳ����
a=[-0.6 -1.04 0 0;1.04 0 0 0;0 0.96 -0.7 -0.32;
   0 0 0.32 0];
b=[1 0 0 0]';
c=[0 0 0 0.32];
d=0;
% ͼ1���Ʋ���ͼ
figure(1)
bode(a,b,c,d);
% ͼ2���Ʒ�������
figure(2)
subplot(211)
nyquist(a,b,c,d);
[z,p,k]=ss2zp(a,b,c,d);
p
subplot(212)
[rm,im]=nyquist(a,b,c,d);
plot(rm,im)
% ͼ3���ƴ�ԣ�ȼ���ӦƵ����ʾ�Ĳ���ͼ
figure(3)
margin(a,b,c,d);
% ͼ4���Ƴ弤��Ӧ����
figure(4)
[ac,bc,cc,dc]=cloop(a,b,c,d);
impulse(ac,bc,cc,dc)
