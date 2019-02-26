%ͼ�����ֱ�ʾ�����ʹ��
clear
close all
clc
t=[0:pi/20:5*pi];
plot(t,sin(t),'r:*')
axis([0 5*pi -1.5 1.5 ])
%��x���y������
xlabel('t(deg)')
ylabel('magnitude')
%��ͼ�μӱ���
title('sine wave from zero to 5\pi')
%��ָ��λ�ô���˵��������
text(pi/2,sin(pi/2),'\bullet\leftarrow The sin(t) at t=2')
%�����ض����ַ�
%\pi 
%\alpha
%\beta
%\leftarrow
%\rightarrow
%\bullet(���)
hold on
plot(t,cos(t))
%����ͼ���ϲ�ͬ������
legend('sin(t)','cos(t)')
%��������ض�λ����������
gtext('���ֱ�ʾ�������')
hold off

