%�㼫��ͼ�Ļ���
clc
clear
close all
%��֪ϵͳ��״̬�ռ�����ģ��
a=[0 3;-3 -1];
b=[0 1]';
c=[1 3];d=2;
[p1,z1]=pzmap(a,b,c,d)
subplot(221)
pzmap(p1,z1)
subplot(222)
pzmap(a,b,c,d)
%��֪ϵͳ���ݺ���ģ��
num=[2 25 51 10];
den=[11 57 78 40];
[p2,z2]=pzmap(num,den)
subplot(223)
pzmap(p2,z2)
subplot(224)
num1=[2 4];
den1=[88 3 1];
pzmap(num1,den1)
more off