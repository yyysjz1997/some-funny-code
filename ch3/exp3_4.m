%����ϵͳ H(S)=(s+alph)/(s^3+10s^2+27s+18)����alph�ֱ�ȡ��1��0��1ʱ��
%�б�ϵͳ�Ŀɿ��ԺͿɹ��ԣ��������Ӧ��״̬���̡�
clc
clear
more off
for alph=[-1:1]
   alph
   num=[1,alph];
   den=[1 10 27 18];
   [a,b,c,d]=tf2ss(num,den)
   cam=ctrb(a,b)
   rcam=rank(cam)
   oam=obsv(a,c)
   roam=rank(oam)
end
more off
  