%curve fitting of sin wave
clc
clear
x=0:0.1:2*pi; %����������x
y=sin(x)+0.5*rand(size(x)); %����������y��ͨ���������
p=polyfit(x,y,3) %��ϳ�����ʽ��3�ף�
y1=polyval(p,x); %�����ʽ��ֵ
plot(x,y,'+',x,y1,'-r') %���ƶ���ʽ���ߣ�����֤���

