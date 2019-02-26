%线性系统 H(S)=(s+alph)/(s^3+10s^2+27s+18)，当alph分别取－1，0，1时，
%判别系统的可控性和可观性，并求出相应的状态方程。
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
  