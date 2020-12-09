%Tarea 1 ejercicio 4

n = 10;% para completar ciclo de x1_n [n=4],  x2_n [n=6],  x3_n [n=8]. PUse un valor más grande para ver un la continuidad de la onda
separacion = 10;
muestras_n = linspace(0,n-1,n*separacion)';

x1_n = cos((2*pi*muestras_n)/(4));
x2_n = cos((2*pi*muestras_n)/(6));
x3_n = cos((2*pi*muestras_n)/(8));

f1 = figure('Name','Graficos por separado utilizando funcion plot','NumberTitle','on');
subplot(3,1,1);
plot(muestras_n,x1_n,'-o');
title("x1(n)");

subplot(3,1,2);
plot(muestras_n,x2_n,'-o');
title("x2(n)");

subplot(3,1,3);
plot(muestras_n,x3_n,'-o');
title("x3(n)");