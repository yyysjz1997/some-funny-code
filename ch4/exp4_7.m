clc
clear
close 
%ϵͳ״̬�ռ�����
a=[-2.5 -1.22 0 0;1.22 0 0 0;1 -1.14 -3.2 -2.56;...
      0 0 2.56 0];
b=[4 1;2 0;2 0;0 0];
c=[0 1 0 3;0 0 0 1];
d=[0 -2;-2 0];
%���Ʊջ�ϵͳ�Ľ�Ծ��Ӧ����
figure(1)
step(a,b,c,d)
title('step response')
xlabel('time-sec')
ylabel('amplitude')
grid on
figure(2)
impulse(a,b,c,d)
title('impulse response')
xlabel('time-sec')
ylabel('amplitude')
grid on
