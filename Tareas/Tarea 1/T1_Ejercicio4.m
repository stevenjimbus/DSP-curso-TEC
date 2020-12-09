%Tarea 1 ejercicio 4
n = 16;% para completar ciclo de x1_n [n=4],  x2_n [n=6],  x3_n [n=8]. Pongo un valor más grande para ver un la continuidad de la onda
separacion = 10;
muestras_n = linspace(0,n-1,n*separacion)';

x1_n = cos((2*pi*muestras_n)/(4));
x2_n = cos((2*pi*muestras_n)/(6));
x3_n = cos((2*pi*muestras_n)/(8));

x4_n = x1_n + x2_n;
x5_n = x1_n + x3_n;

f1 = figure('Name','Graficos funcion plot','NumberTitle','on');
subplot(3,1,1);
plot(muestras_n,x1_n,'-o');
title("x1(n)");

subplot(3,1,2);
plot(muestras_n,x2_n,'-o');
title("x2(n)");

subplot(3,1,3);
plot(muestras_n,x3_n,'-o');
title("x3(n)");

f2 = figure('Name','Graficos funcion plot','NumberTitle','on');
subplot(2,1,1);
plot(muestras_n,x4_n,'-o');
title("x4(n)");

subplot(2,1,2);
plot(muestras_n,x5_n,'-o');
title("x5(n)");