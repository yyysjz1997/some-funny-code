% 有一模拟滤波器，其传递函数为：
% H(s)=(0.2s^2+0.3s+1)/(s^2+0.4s+1)
% 求它的幅频特性和相频特性
clear
close all
clc
b=[0.2 0.3 1];
a=[1 0.4 1];
w=logspace(-1,1);
h=freqs(b,a,w);
%对h求模值
mag=abs(h);
semilogx(w,mag)
grid on
xlabel('frequency-rad/s')
ylabel('magnitude')
figure(2)
%直接绘制幅频与相频曲线
freqs(b,a,w)
[h1,w1]=freqs(b,a);
[h2,w2]=freqs(b,a,100);
disp('w1 length is')
length_w1=length(w1)
disp('w2 length is')
length_w2=length(w2)


