% exp4_9_.m
% ����ϵͳ˲̬����ָ�꣨��̬�����������2����
% ��֪ϵͳG(s)=3/(s+1+3i)(s+1-3i)
clc
clear
% ϵͳģ�ͽ���
num=3;
den=conv([1 1+3i],[1 1-3i]);
% ��ϵͳ�ĵ�λ��Ծ��Ӧ
[y,x,t]=step(num,den);
% ����Ӧ����ֵ̬
finalvalue=dcgain(num,den)
% ����Ӧ�ķ�ֵ����Ӧ���±�
[yss,n]=max(y);
% ���㳬��������ֵʱ��
percentovershoot=100*(yss-finalvalue)/finalvalue
timetopeak=t(n)
% ��������ʱ��
n=1;
while y(n)<0.1*finalvalue
   n=n+1;
end
m=1;
while y(m)<0.9*finalvalue
   m=m+1;
end
risetime=t(m)-t(n)
% �������ʱ��
k=length(t);
while (y(k)>0.98*finalvalue)&(y(k)<1.02*finalvalue)
   k=k-1;
end
settlingtime=t(k)
