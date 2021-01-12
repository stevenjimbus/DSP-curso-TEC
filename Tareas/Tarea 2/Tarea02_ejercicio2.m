%F  : Frecuencia de la senal en tiempo continuo
%Fs : Frecuencia de muestreo
%k  : numero de alias
%
function Tarea02_ejercicio2(F,Fs,k)
%F = .5;  % Hz
tmin = 0;%Tiempo mínimo en segundos de señal analogica
tmax = 40;%Tiempo maximo en segundos de señal analogica
t = linspace(tmin, tmax, 400);%Generar vector espaciado linealmente 
x_c = cos(2*pi*F * t);%Valores de señal analogica
plot(t,x_c,':k')%Funcion para graficar señal analogica
xlabel('t (seconds)')%titulo del eje del tiempo 


% sample x_c  with a sampling frequency of 800 Hz.
%Fs=8;
Ts = 1/Fs;%Calculo de periodo de muestreo
nmin = ceil(tmin / Ts);%menor muestra ubicada en el eje del tiempo
nmax = floor(tmax / Ts);%mayor muestra ubicada en el eje del tiempo
n = nmin:nmax;%generar todas las muestras en el eje del tiempo
x_fundamental = cos(2*pi*(F) * n*Ts);%Calculo de los valores de la función con frecuencia fundamental

hold on
plot(n*Ts,x_fundamental,'g *')%graficar función con frecuencia fundamental


%****Calculo de k-esimo alias
%k = 1;s
Fk = F / ((F/Fs)+k)%Metodo para calcular frecuencia de muestreo Alias
Tk = 1/Fk%Calculo de periodo de muestreo alias
nmin = ceil(tmin / Tk);%menor muestra ubicada en el eje del tiempo
nmax = floor(tmax / Tk);%mayor muestra ubicada en el eje del tiempo
n = nmin:nmax;%generar todas las muestras en el eje del tiempo
x_alias = cos(2*pi*(F) * n*Tk);%Calculo de los valores de la función con frecuencia alias
hold on
plot(n*Tk,x_alias,'r o')%graficar función con frecuencia alias

legend({'señal analogica','frecuencia muestreo fundamental','Frecuencia del k-esimo alias'},'Location','southwest')
hold off