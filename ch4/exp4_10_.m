%exp4_10_.m
%����Ͷ���ϵͳ��Ȼ��Ƶ�ʹ̶�������ȱ仯ʱ�Ĳ���ͼ
clear
clc
close all
wn=6;
kosi=[0.1:0.1:1.0];
num=wn^2;
for kos=kosi
   den=[1 2*kos*wn wn^2];
   [mag,pha,w1]=bode(num,den);
   magg=20*log10(mag);
   subplot(211)
   hold on
   semilogx(w1,magg);
   % ע���������Ƶ�ͼ�δ��ڻᷢ��x�Ტû��ȡ�����ֶ�
   subplot(212);hold on
   semilogx(w1,pha);
end
subplot(211)
grid on
title('bode plot')
xlabel('frequency(rad/sec)')
ylabel('gain db')
text(6.4,16,'kosi=0.1')
text(1,-18,'kosi=1.0')
subplot(212)
grid on
xlabel('frequency(rad/sec)')
ylabel('phase deg')
text(5,-20,'kosi=0.1')
text(8,-185,'kosi=1.0')
hold off
   
