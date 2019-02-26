function [pos,tr,ts2,tp]=stepchar(y,t)
%find pos and tp
%返回阶跃响应输出y列向量的最大值mp及对应下标值ind
[mp,ind]=max(y);
%求取时间向量的长度dimt
dimt=length(t);
%确定最终的稳定值yss
yss=y(dimt);
pos=100*(mp-yss)/yss;
tp=t(ind);
% find rise time tr
%确定输出为0.1时的时刻
i=1;j=1;k=1;q=1;
while y(i)<0.1
   i=i+1;
end
t1=t(i);
%确定输出为0.9时的时刻
while y(j)<0.9
   j=j+1;
end
t2=t(j);
tr=t2-t1;
% find ts2
i=dimt+1;n=0;
while n==0
   i=i-1;
   if i==1
      n=1;
   elseif y(i)>=1.02
      n=1;
   end
end
t1=t(i);i=dimt+1;n=0;
while n==0
   i=i-1;
   if y(i)<=0.98
      n=1;
   end
   t2=t(i);
   if t1>t2
      ts2=t1;
   else
      ts2=t2;
   end
end
