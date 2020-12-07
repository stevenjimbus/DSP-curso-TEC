%Asignar como parte de la tarea 1

%Definicion de "n" muestras
x=0:1:49;

%Definicion de funciones a graficar con sus respectivas frecuencias
a = sin(2*pi*0.01*x);
b = sin(2*pi*0.02*x);
c = sin(2*pi*0.05*x);
d = sin(2*pi*0.1*x);

%Graficas por separado
figure(1)
stem(a,'ro')
figure(2)
stem(b,'b+')
figure(3)
stem(c,'cx')
figure(4)
stem(d,'k*')

%Gráficas en misma figura por separado
figure(5)
subplot(2,2,1)
stem(a,'r')
subplot(2,2,2)
stem(b,'b')
subplot(2,2,3)
stem(c,'c')
subplot(2,2,4)
stem(d,'k')

%Gráfica con funciones traslapadas
figure (6)
hold
stem(a,'r')
stem(b,'b')
stem(c,'c')
stem(d,'k')

