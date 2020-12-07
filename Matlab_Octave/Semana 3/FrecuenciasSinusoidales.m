%N�mero 1
%An�lisis de frecuencia de se�ales sinusoidales
%Presenta dos se�ales cosenoidales discretas y la posibilidad de definir la
%frecuencia de ambas con el fin de observar el comportamiento y comparaci�n
%de las mismas. Ver lo del rango fundamental, el periodo, el asunto del
%alias.

n = zeros(1,50);

f1 = 0/4;
f2 = 1/2;

for i = 1:50
        n(i) = i-1;
end

x1 = cos(2*pi*f1*n);
x2 = cos(2*pi*f2*n);
 
clf
subplot(2,1,1)
hold all
stem(n,x1,'k','Linewidth',2);

subplot(2,1,2)
hold all
stem(n,x2,'b','Linewidth',2);


