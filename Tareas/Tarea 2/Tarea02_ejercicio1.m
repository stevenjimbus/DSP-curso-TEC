n = 0:1:20;%Cantidad de muestras necesarias para demostrar graficamente el ejercicio
f_fundamental = 1/5; % f = 0.2, f = 1/5   es la frecuencia fundamental definida por el problema
f_alias_positivo = f_fundamental + 1; % se calcula la frecuencia Alias al sumarle 1 a la frecuencia fundamental f_fundamental

x1 = cos(2*pi*(f_fundamental)*n); %calculo de funcion coseno definido por f_fundamental
x2 = cos(2*pi*(f_alias_positivo)*n);%calculo de funcion coseno definido por f_alias_positivo


figure(1)%codigo necesario para graficar
clf%codigo necesario para graficar
subplot(2,1,1);%codigo necesario para graficar
stem(n,x1);%codigo necesario para graficar
title(['f_ fundamental: ',num2str(f_fundamental)]);%codigo necesario para graficar
subplot(2,1,2);%codigo necesario para graficar
stem(n,x2);%codigo necesario para graficar
title(['f_ alias_ positivo: ',num2str(f_alias_positivo)]);%codigo necesario para graficar