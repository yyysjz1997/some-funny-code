%************
%exp2_17.m
%���ܣ����������ͼ������������ͼ�εıȽ�
%************
clear
close
clc
x=0:0.1:1;
y=10.^x;
subplot(211)
semilogy(x,y)
title('semilogarithmic scales gragh')
grid on
subplot(212)
plot(x,y)
title('linear scales graph')
grid on