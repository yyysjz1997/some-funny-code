%exp4_12.m
%margin����ͨ������bode����֮������bode�����õ�
%��ֵ����Ǻ�Ƶ��ʸ����Ȼ����margin���Ƴ���ֵԣ��
%�����ԣ�ȵĲ���ͼ��
clear
clc
close all
%ĳϵͳ�Ŀ������ݺ���Ϊ��G(s)=k/s(s+1)(0.2s+1)
%��k�ֱ�Ϊ2��20ʱ�ķ�ֵԣ�������ԣ��
num1=2;num2=20;
den=conv([1 0],conv([1 1],[0.2 1]));
w=logspace(-1,2,100);
figure(1)
[mag1,pha1]=bode(num1,den,w);
margin(mag1,pha1,w)
figure(2)
[mag2,pha2]=bode(num2,den,w);
margin(mag2,pha2,w)
[m1,p1,wm,wp]=margin(mag2,pha2,w)

