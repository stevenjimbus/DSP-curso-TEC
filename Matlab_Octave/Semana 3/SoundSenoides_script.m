F = 100;
Fs = 44100;
f = F/Fs;
time = 3;
n = 0:Fs*time;
y = 0.3*sin(2*pi*f*n);
sound(y,Fs);