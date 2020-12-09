%Número 4
% Senoides discretos, la idea es poder ver el comportamiento de los
% senoides discretos, desde una frecuencia baja hasta ir aumentando desde 0
% a 1 y luego pasar de 1 para ver alias.

figure(1)
clf
n = 0:1:45;
x1 = cos(2*pi*(0/8)*n);
x2 = cos(2*pi*(1/8)*n);
x3 = cos(2*pi*(2/8)*n);
x4 = cos(2*pi*(3/8)*n);
x5 = cos(2*pi*(4/8)*n);
x6 = cos(2*pi*(5/8)*n);
x7 = cos(2*pi*(6/8)*n);
x8 = cos(2*pi*(7/8)*n);
x9 = cos(2*pi*(8/8)*n);
x10 = cos(2*pi*(9/8)*n);
x11 = cos(2*pi*(10/8)*n);
x12 = cos(2*pi*(11/8)*n);

subplot(4,1,1);
stem(n,x1,'b');
subplot(4,1,2)
stem(n,x2);
subplot(4,1,3)
stem(n,x3);
subplot(4,1,4);
stem(n,x4);

figure(2)
clf
subplot(4,1,1);
stem(n,x5,'b');
subplot(4,1,2)
stem(n,x6);
subplot(4,1,3)
stem(n,x7);
subplot(4,1,4);
stem(n,x8);


figure(3)
clf
subplot(4,1,1);
stem(n,x9,'b');
subplot(4,1,2)
stem(n,x10);
subplot(4,1,3)
stem(n,x11);
subplot(4,1,4);
stem(n,x12);