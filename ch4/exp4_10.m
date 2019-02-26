%exp4_10.m
%����Ͷ���ϵͳ��Ȼ��Ƶ�ʹ̶�������ȱ仯ʱ�Ĳ���ͼ
clear
close all
clc
wn=6;
kosi=[0.1:0.1:1.0];
%�ڶ����ռ������ɴ�10^(-1)��10^1��100�����ݵĺ�����
w=logspace(-1,1,100);
num=wn^2;
for kos=kosi
   den=[1 2*kos*wn wn^2];
   [mag,pha,w1]=bode(num,den,w);
   % ע��mag�ĵ�λ���Ƿֱ�������Ҫ�ֱ���ʾ
   % ����ͨ��20*log10(mag)����ת��
   subplot(221);
   hold on;
   semilogx(w1,mag)
   % ע���������Ƶ�ͼ�δ��ڻᷢ��x�Ტû��ȡ�����ֶ�
   subplot(222)
   hold on;
   semilogx(w,mag)
   subplot(223);
   hold on;
   semilogx(w1,pha)
   subplot(224)
   hold on;
   semilogx(w,pha)
end
subplot(221)
grid on
title('bode plot')
xlabel('frequency(w)')
ylabel('amplitude')
text(6.2,5,'kosi=0.1')
text(2,0.5,'kosi=1.0')

subplot(223)
grid on
xlabel('frequency(w)')
ylabel('phase deg')
text(5,-20,'kosi=0.1')
text(2,-85,'kosi=1.0')
hold off
   
