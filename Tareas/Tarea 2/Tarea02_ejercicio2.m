%F  : Frecuencia de la senal en tiempo continuo
%Fs : Frecuencia de muestreo
%k  : numero de alias
%
function Tarea02_ejercicio2(F,Fs,k)
%F = .5;  % Hz
tmin = 0;
tmax = 40;
t = linspace(tmin, tmax, 400);
x_c = cos(2*pi*F * t);
plot(t,x_c,'k')
xlabel('t (seconds)')


% sample x_c  with a sampling frequency of 800 Hz.
%Fs=8;
Ts = 1/Fs;
nmin = ceil(tmin / Ts);
nmax = floor(tmax / Ts);
n = nmin:nmax;
x_fundamental = cos(2*pi*(F) * n*Ts);

hold on
plot(n*Ts,x_fundamental,'r o')


%****Calculo de k-esimo alias
%k = 1;s
Fk = F / ((F/Fs)+k)
Tk = 1/Fk
nmin = ceil(tmin / Tk);
nmax = floor(tmax / Tk);
n = nmin:nmax;
x_alias = cos(2*pi*(F) * n*Tk);
hold on
plot(n*Tk,x_alias,'b *')
hold off