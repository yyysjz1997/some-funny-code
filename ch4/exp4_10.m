%exp4_10.m
%求典型二阶系统自然振荡频率固定，阻尼比变化时的波特图
clear
close all
clc
wn=6;
kosi=[0.1:0.1:1.0];
%在对数空间上生成从10^(-1)到10^1共100个数据的横坐标
w=logspace(-1,1,100);
num=wn^2;
for kos=kosi
   den=[1 2*kos*wn wn^2];
   [mag,pha,w1]=bode(num,den,w);
   % 注意mag的单位不是分贝，若需要分贝表示
   % 可以通过20*log10(mag)进行转换
   subplot(221);
   hold on;
   semilogx(w1,mag)
   % 注意在所绘制的图形窗口会发现x轴并没有取对数分度
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
   
