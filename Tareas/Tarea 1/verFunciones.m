% verFunciones(N) grafica las siguientes funciones:
% y(N) = sin(3*pi*f*N) para f = [0.01,0.02,0.05,0.1]  y N >= 0  (N = numero Entero)
% verFunciones(N) grafica utilizando las funciones plot y stem (ver titulo
% de las figuras generadas para mas detalles
%
% Como utilizar la funcion?
% Decida la cantidad de muestras que desea graficar. Ejemplo N=75
%En el command window escriba ->  verFunciones(75)

function verFunciones(N)
muestras_n = linspace(0,N-1,N)';%Generar vector espaciado linealmente

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
end 


