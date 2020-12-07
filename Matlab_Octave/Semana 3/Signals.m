%Número 2
%Senoides discretos vs discretos
%Frecuencia de Muestreo variable con el periodo de muestreo
%Frecuencia F fija
%Se plotean la señal continua y sobre ella el muestreo realizado con cada
%frecuencia definida para ver de fondo la señal de variable discreta

%sinusoides continuos
%t = linspace(0,9*pi);

F = 1;  %Hz
T = 1/F; %seg
Ttotal = 5*T; %seg

t = 0:Ttotal/1000:Ttotal; %900 puntos en el intervalo

y1 = sin(2*pi*F*t);
y2 = sin(2*pi*F*t);
y3 = sin(2*pi*F*t);
y4 = sin(2*pi*F*t);
y5 = sin(2*pi*F*t);

Ts = 1/2;
Fs = 1/Ts;
f1 = F/Fs;
disp(f1);
n1 = 0:Ts:Ttotal;
x1 = sin(2*pi*F*n1);

Ts = 1/3;
Fs = 1/Ts;
f2 = F/Fs;
disp(f2);
n2 = 0:Ts:Ttotal;
x2 = sin(2*pi*F*n2);

Ts = 1/10;
Fs = 1/Ts;
f3 = F/Fs;
disp(f3);
n3 = 0:Ts:Ttotal;
x3 = sin(2*pi*F*n3);

Ts = 1/(1*sqrt(2));
Fs = 1/Ts;
f4 = F/Fs;
disp(f4);
n4 = 0:Ts:Ttotal;
x4 = sin(2*pi*F*n4);

figure(1)
clf

%muestreo 1
subplot(4,1,1)
stem(n1,x1,'r');
hold on
plot(t,y1,'k');
hold on

%muestreo 2
subplot(4,1,2)
stem(n2,x2,'r');
hold on
plot(t,y2,'k');

%muestreo 3
subplot(4,1,3)
stem(n3,x3,'r');
hold on
plot(t,y3,'k');

%muestreo 4
subplot(4,1,4)
stem(n4,x4,'r');
hold on
plot(t,y4,'k');
