function [pos,tr,ts2,tp]=stepchar(y,t)
%find pos and tp
%���ؽ�Ծ��Ӧ���y�����������ֵmp����Ӧ�±�ֵind
[mp,ind]=max(y);
%��ȡʱ�������ĳ���dimt
dimt=length(t);
%ȷ�����յ��ȶ�ֵyss
yss=y(dimt);
pos=100*(mp-yss)/yss;
tp=t(ind);
% find rise time tr
%ȷ�����Ϊ0.1ʱ��ʱ��
i=1;j=1;k=1;q=1;
while y(i)<0.1
   i=i+1;
end
t1=t(i);
%ȷ�����Ϊ0.9ʱ��ʱ��
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
