num1 = [1 6 11 6];
den1 = [1 7 12 11 5];
printsys(num1,den1)
[p1,z1] = pzmap(num1,den1)
[num2,den2] = minreal(num1,den1);
printsys(num2,den2)
pzmap(num1,den1)