%ĳ����ϵͳ�Ŀ������ݺ�����G(s)=k(s+1)/s^2(s+2)(s+4)
%Ҫ��ֱ����������ϵͳ�͸�����ϵͳ�ĸ��켣
%ָ�����ǵ��ȶ��������ʲô��ͬ
%


clc
clear
close all
%���Ƴ�����켣ͼ
subplot(211)
num=[1 1];
den=conv([1 0 0],conv([1 2],[1 4]));
rlocus(num,den)

%������ȸ��켣ͼ
subplot(212)
num1=-num;
den1=den;
rlocus(num1,den1)
