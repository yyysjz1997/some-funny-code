close all
clc
clear
%����ʱ�䷶Χ
t=[0:pi/20:9*pi];
figure(1)   %ѡ��ͼ��
plot(t,sin(t),'rp-.')
grid on     %����������ͼ�����������դ��ע������plot֮��
grid off   %ɾ��դ��
figure(2)
plot(t,cos(t))
grid on    
grid off   %ɾ��դ��