%���켣ͼ�Ļ���
clc
clear
close all
%��֪ϵͳ��״̬�ռ�����ģ��
a=[0 3;-3 -1];
b=[0 1]';
c=[1 3];d=2;
subplot(211)
rlocus(a,b,c,d)
%��֪ϵͳ���ݺ���ģ��
num=[2 4];
den=[8 3 1 0];
subplot(212)
rlocus(num,den)
[r,k]=rlocus(num,den);
disp('r��ά��')
size(r)


