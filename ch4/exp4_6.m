clc
clear
close
%ϵͳ���ݺ�������
num=[10 25];
den=[0.16 1.96 10 25];
%���Ʊջ�ϵͳ�Ľ�Ծ��Ӧ����
t=0:0.02:5;
y=step(num,den,t);
plot(t,y)
xlabel('time-sec')
ylabel('y(t)')
grid on
