%Número 4
% Senoides discretos, la idea es poder ver el comportamiento de los
% senoides discretos, desde una frecuencia baja hasta ir aumentando desde 0
% a 1 y luego pasar de 1 para ver alias.


n = 0:1:20;
f_fundamental = 1/5; % f = 0.2, f = 1/5   es la frecuencia fundamental definica por el problema
f_alias_positivo = f_fundamental + 1; % se calcula la frecuencia Alias al sumarle 1 a la frecuencia fundamental f_fundamental

x1 = cos(2*pi*(f_fundamental)*n); %calculo de funcion coseno definido por f_fundamental
x2 = cos(2*pi*(f_alias_positivo)*n);%calculo de funcion coseno definido por f_alias_positivo


figure(1)%codigo necesario para graficar
clf%codigo necesario para graficar
subplot(2,1,1);%codigo necesario para graficar
stem(n,x1);%codigo necesario para graficar
title('f_ fundamental');%codigo necesario para graficar
subplot(2,1,2);%codigo necesario para graficar
stem(n,x2);%codigo necesario para graficar
title('f_ alias_ positivo');%codigo necesario para graficar