%muestras_n = 0:1:74;%Indica que son las primeras 75 muestras. De 0 a 74 con incrementos de 1
muestras_n = linspace(0,74,75)';%Generar vector espaciado linealmente

f01 = 0.01 ;%Valor definido por el ejercicio;
f02 = 0.02;%Valor definido por el ejercicio;
f05 = 0.05;%Valor definido por el ejercicio;
f1  = 0.1;%Valor definido por el ejercicio;

y01 = sin(3*pi*f01*muestras_n);%Funcion definida por el ejercicio. Ese utiliza la frecuencua de 0.01 
y02 = sin(3*pi*f02*muestras_n);%Funcion definida por el ejercicio. Ese utiliza la frecuencua de 0.02
y05 = sin(3*pi*f05*muestras_n);%Funcion definida por el ejercicio. Ese utiliza la frecuencua de 0.05
y1 = sin(3*pi*f1*muestras_n);%Funcion definida por el ejercicio. Ese utiliza la frecuencua de 0.1

f1 = figure('Name','Graficos por separado utilizando funcion plot','NumberTitle','on');%definir una figura de representacion
subplot(4,1,1)%crear dentro de la figura creada anteriormente, una malla de 4x1 para graficar las funciones
plot(muestras_n,y01,'-o');%funcion para graficar linea 2D plot(X,Y) donde X es la variable independiente y Y es la variable dependiente de X.  
title("frequency = 0.01");%titulo del subplot

subplot(4,1,2);%crear dentro de la figura creada anteriormente, una malla de 4x1 para graficar las funciones
plot(muestras_n,y02,'-*');%funcion para graficar linea 2D plot(X,Y) donde X es la variable independiente y Y es la variable dependiente de X. 
title("frequency = 0.02");%titulo del subplot

subplot(4,1,3);%crear dentro de la figura creada anteriormente, una malla de 4x1 para graficar las funciones
plot(muestras_n,y05,'-^');%funcion para graficar linea 2D plot(X,Y) donde X es la variable independiente y Y es la variable dependiente de X. 
title("frequency = 0.05");%titulo del subplot

subplot(4,1,4);%crear dentro de la figura creada anteriormente, una malla de 4x1 para graficar las funciones
plot(muestras_n,y1,'-x');%funcion para graficar linea 2D plot(X,Y) donde X es la variable independiente y Y es la variable dependiente de X. 
title("frequency = 0.1");%titulo del subplot

f2 = figure('Name','Graficos por separado utilizando funcion stem','NumberTitle','on');%definir una figura de representacion
subplot(4,1,1);%crear dentro de la figura creada anteriormente, una malla de 4x1 para graficar las funciones
stem(muestras_n,y01,'-o');%funcion para graficar valores discretos de una funcion
title("frequency = 0.01");%titulo del subplot

subplot(4,1,2);%crear dentro de la figura creada anteriormente, una malla de 4x1 para graficar las funciones
stem(muestras_n,y02,'-*');%funcion para graficar valores discretos de una funcion
title("frequency = 0.02");%titulo del subplot

subplot(4,1,3);%crear dentro de la figura creada anteriormente, una malla de 4x1 para graficar las funciones
stem(muestras_n,y05,'-^');%funcion para graficar valores discretos de una funcion
title("frequency = 0.05");%titulo del subplot

subplot(4,1,4);%crear dentro de la figura creada anteriormente, una malla de 4x1 para graficar las funciones
stem(muestras_n,y1,'-x');%funcion para graficar valores discretos de una funcion
title("frequency = 0.1");%titulo del subplot

f3 = figure('Name','Graficos en mismo cuadro utilizando plot','NumberTitle','on');%definir una figura de representacion
plot(muestras_n,y01,'-o',muestras_n,y02,'-*',muestras_n,y05,'-^',muestras_n,y1,'-x');%funcion para graficar linea 2D plot(X,Y) donde X es la variable independiente y Y es la variable dependiente de X. 
legend('frequency = 0.01','frequency = 0.02','frequency = 0.05','frequency = 0.1');%etiqueta para cada linea del grafico

f4 = figure('Name','Graficos en mismo cuadro utilizando stem','NumberTitle','on');%definir una figura de representacion
X = muestras_n;%reasignacion de variable - datos
Y = [y01,y02,y05,y1];%creación de matriz 75x4, donde el 4 se refiere a las cuatro funciones a graficar
stem(X,Y);%funcion para graficar valores discretos de una funcion
legend('frequency = 0.01','frequency = 0.02','frequency = 0.05','frequency = 0.1');%etiqueta para cada linea del grafico





