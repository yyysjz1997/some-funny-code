clc
clear
close
%�������ݺ�������
numo=20;
deno=[1 8 36 40 0];
%��ջ����ݺ���
[numc,denc]=cloop(numo,deno,-1);
%���Ʊջ�ϵͳ�����弤����Ӧ����
t=1:0.1:10;
[y,x]=impulse(numc,denc,t);
plot(t,y)
title('the impulse responce')
xlabel('time-sec')
grid on
