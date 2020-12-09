%Visualización de una función en tiempo discreto y su alias más cercano

%Definicion de "n" muestras
x=0:1:49;

%Funcion con f=0.05
y=sin(2*pi*0.05*x);

%Funcion con alias positivo mas cercano
z=sin(2*pi*(0.05+1)*x);

%Graficas por aparte
figure (1)
stem (y,'r','o')
figure (2)
stem (z,'b','^')

%Graficas traslapadas
figure (3)
stem (y,'r','o')
hold
stem (z,'b','^')