close all
clc
clear
%����ʱ�䷶Χ
t=[0:pi/20:9*pi];
hold on     %������ͬһ����ϵ�»��Ʋ�ͬ��ͼ��
plot(t,sin(t),'r:*')
plot(t,cos(t))
plot(t,-cos(t),'k')
grid on     %����������ͼ�����������դ��ע������plot֮��
hold off    %���Ǿ�ͼ
plot(t,-sin(t))