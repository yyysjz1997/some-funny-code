%���⣺��֪���Ͷ���ϵͳ�Ĵ��ݺ���ΪG(s)=wn^2/(s^2+2*i*wn+wn^2),�Ի��Ƶ�wn=4ʱ��
%i�ֱ�Ϊ0.1��0.2��...��1.0��2.0ʱ��ϵͳ�ĵ�λ��Ծ��Ӧ��
close
clear
clc
wn=4;
kosai=[0.5,1];
figure(1)
hold on
for i=kosai
   num=wn*wn;
   den=[1 2*i*wn wn*wn];
   den1 = 1;
   num1 = 2;
   step(num1,den1);
end
title('the step responce of two order system');