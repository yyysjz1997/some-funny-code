syms t
disp('原函数f')
f = exp(-t^2)
disp('象函数F')
F = fourier(f)
disp('新函数P')
P = fourier(F)

subplot(1,3,1)
ezplot(f)
subplot(1,3,2)
ezplot(F)
subplot(1,3,3)
ezplot(P)