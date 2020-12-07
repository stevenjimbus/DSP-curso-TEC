muestras_n = 0:1:74;%Indica que son las primeras 75 muestras. De 0 a 74 con incrementos de 1

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
plot(muestras_n,y01);

subplot(4,1,2)
plot(muestras_n,y02);

subplot(4,1,3)
plot(muestras_n,y05);

subplot(4,1,4)
plot(muestras_n,y1);

f1 = figure('Name','Graficos por separado utilizando funcion stem','NumberTitle','on');
subplot(4,1,1)
stem(muestras_n,y01);

subplot(4,1,2)
stem(muestras_n,y02);

subplot(4,1,3)
stem(muestras_n,y05);

subplot(4,1,4)
stem(muestras_n,y1);




