clc
clear
% more on
a1=[0 1;1 -2];
b1=[0;1];
c1=[1 3];d1=[1];
a2=[0 1;-1 -3];
b2=[0;1];
c2=[1 4];d2=[0];
%串联连接
disp('串联连接')
[a,b,c,d]=series(a1,b1,c1,d1,a2,b2,c2,d2)
%并联连接
disp('并联连接')
[a,b,c,d]=parallel(a1,b1,c1,d1,a2,b2,c2,d2)
%正反馈
disp('正反馈连接')
[a,b,c,d]=feedback(a1,b1,c1,d1,a2,b2,c2,d2,+1)
%负反馈
disp('负反馈连接')
[a,b,c,d]=feedback(a1,b1,c1,d1,a2,b2,c2,d2)
%单位负反馈
disp('单位负反馈连接')
[a,b,c,d]=cloop(a1,b1,c1,d1)


