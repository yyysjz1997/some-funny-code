syms t
disp('ԭ����f')
f = exp(-t^2)
disp('����F')
F = fourier(f)
disp('�º���P')
P = fourier(F)

subplot(1,3,1)
ezplot(f)
subplot(1,3,2)
ezplot(F)
subplot(1,3,3)
ezplot(P)