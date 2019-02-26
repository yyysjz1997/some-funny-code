clear
clc
close all
%输入期望得超调量及峰值时间
pos=input('please input expect pos(%)=');
tp=input('please input expect tp=');
z=log(100/pos)/sqrt(pi^2+(log(100/pos))^2);
wn=pi/(tp*sqrt(1-z^2));
num=wn^2;
den=[1 2*z*wn wn^2];
t=0:0.02:4;
y=step(num,den,t);
plot(t,y)
xlabel('time-sec')
ylabel('y(t)')
grid on
d=wn^2
e=(2*z*wn-1)/d
