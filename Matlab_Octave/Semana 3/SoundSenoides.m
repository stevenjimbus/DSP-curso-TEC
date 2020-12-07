%Número 3
function [  ] = SoundSenoides( F )
%Función que reproduce una senal senoidal de 440 Hz con N muestras por
%periodo.


Fs = 44100;
f = F/Fs;
time = 5;
n = 0:Fs*time;
y = 0.5*sin(2*pi*f*n);
sound(y,Fs);

end

