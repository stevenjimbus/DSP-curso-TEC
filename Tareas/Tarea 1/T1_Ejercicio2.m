%muestras_n = 0:1:74;%Indica que son las primeras 75 muestras. De 0 a 74 con incrementos de 1
muestras_n = linspace(0,74,75)';

f01 = 0.01 ;%Valor definido por el ejercicio;
f02 = 0.02;%Valor definido por el ejercicio;
f05 = 0.05;%Valor definido por el ejercicio;
f1  = 0.1;%Valor definido por el ejercicio;

y01 = sin(3*pi*f01*muestras_n);%Funcion definida por el ejercicio. Ese utiliza la frecuencua de 0.01 
y02 = sin(3*pi*f02*muestras_n);%Funcion definida por el ejercicio. Ese utiliza la frecuencua de 0.02
y05 = sin(3*pi*f05*muestras_n);%Funcion definida por el ejercicio. Ese utiliza la frecuencua de 0.05
y1 = sin(3*pi*f1*muestras_n);%Funcion definida por el ejercicio. Ese utiliza la frecuencua de 0.1

f1 = figure('Name','Graficos por separado utilizando funcion plot','NumberTitle','on');
subplot(4,1,1)
plot(muestras_n,y01,'-o');
title("frequency = 0.01");

subplot(4,1,2)
plot(muestras_n,y02,'-*');
title("frequency = 0.02");

subplot(4,1,3)
plot(muestras_n,y05,'-^');
title("frequency = 0.05");

subplot(4,1,4)
plot(muestras_n,y1,'-x');
title("frequency = 0.1");

f2 = figure('Name','Graficos por separado utilizando funcion stem','NumberTitle','on');
subplot(4,1,1)
stem(muestras_n,y01,'-o');
title("frequency = 0.01");

subplot(4,1,2)
stem(muestras_n,y02,'-*');
title("frequency = 0.02");

subplot(4,1,3)
stem(muestras_n,y05,'-^');
title("frequency = 0.05");

subplot(4,1,4)
stem(muestras_n,y1,'-x');
title("frequency = 0.1");

f3 = figure('Name','Graficos en mismo cuadro utilizando plot','NumberTitle','on');
plot(muestras_n,y01,'-o',muestras_n,y02,'-*',muestras_n,y05,'-^',muestras_n,y1,'-x');
legend('frequency = 0.01','frequency = 0.02','frequency = 0.05','frequency = 0.1');

f4 = figure('Name','Graficos en mismo cuadro utilizando stem','NumberTitle','on');
X = muestras_n;
Y = [y01,y02,y05,y1];
stem(X,Y);
legend('frequency = 0.01','frequency = 0.02','frequency = 0.05','frequency = 0.1');





