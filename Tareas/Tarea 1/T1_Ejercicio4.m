%Tarea 1 ejercicio 4
n = 16;% para completar ciclo de x1_n [n=4],  x2_n [n=6],  x3_n [n=8]. Pongo un valor más grande para ver un la continuidad de la onda
separacion = 10;%cantidad de separaciones entre cada n=1; por ejemplo, entre n=1 y n=2 habrán 10 separaciones
muestras_n = linspace(0,n-1,n*separacion)';%Generar vector espaciado linealmente

x1_n = cos((2*pi*muestras_n)/(4));%funcion definido por el ejercicio;
x2_n = cos((2*pi*muestras_n)/(6));%funcion definido por el ejercicio;
x3_n = cos((2*pi*muestras_n)/(8));%funcion definido por el ejercicio;

x4_n = x1_n + x2_n;%funcion definido por el ejercicio;
x5_n = x1_n + x3_n;%funcion definido por el ejercicio;

f1 = figure('Name','Graficos con funcion plot','NumberTitle','on');
subplot(3,1,1);%instrucción necesaria para generar los graficos
plot(muestras_n,x1_n,'-o');%instrucción necesaria para generar los graficos
title("x1(n)");%instrucción necesaria para generar los graficos

subplot(3,1,2);%instrucción necesaria para generar los graficos
plot(muestras_n,x2_n,'-o');%instrucción necesaria para generar los graficos
title("x2(n)");%instrucción necesaria para generar los graficos

subplot(3,1,3);%instrucción necesaria para generar los graficos
plot(muestras_n,x3_n,'-o');%instrucción necesaria para generar los graficos
title("x3(n)");%instrucción necesaria para generar los graficos

f2 = figure('Name','Graficos con funcion plot','NumberTitle','on');
subplot(2,1,1);%instrucción necesaria para generar los graficos
plot(muestras_n,x4_n,'-o');%instrucción necesaria para generar los graficos
title("x4(n)");%instrucción necesaria para generar los graficos

subplot(2,1,2);%instrucción necesaria para generar los graficos
plot(muestras_n,x5_n,'-o');%instrucción necesaria para generar los graficos
title("x5(n)");%instrucción necesaria para generar los graficos