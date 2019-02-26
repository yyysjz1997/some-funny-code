% ��һģ���˲������䴫�ݺ���Ϊ��
% H(s)=(0.2s^2+0.3s+1)/(s^2+0.4s+1)
% �����ķ�Ƶ���Ժ���Ƶ����
clear
close all
clc
b=[0.2 0.3 1];
a=[1 0.4 1];
w=logspace(-1,1);
h=freqs(b,a,w);
%��h��ģֵ
mag=abs(h);
semilogx(w,mag)
grid on
xlabel('frequency-rad/s')
ylabel('magnitude')
figure(2)
%ֱ�ӻ��Ʒ�Ƶ����Ƶ����
freqs(b,a,w)
[h1,w1]=freqs(b,a);
[h2,w2]=freqs(b,a,100);
disp('w1 length is')
length_w1=length(w1)
disp('w2 length is')
length_w2=length(w2)


