

function Tarea02_ejercicio3(F)
amp=1;% amplitud de la señal senoidal

BW = 22000;%ancho de banda de espectro audible definido por el ejercicio
Fs=BW*2; % sampling frequency. Cumpliendo el teorema de Nyquist
time=4;%tiempo de reproduccion de la frecuencia. definido por el ejercicio
n = 0:Fs*time;%Calculo de la cantidad de muestras por cada frecuencia

unicoVector = [];%Vector que almacenará los valores de F y sus armonicos
armonico = 1;%variable util para iterar entre todos los armonicos
F_armonico = F*armonico;% % variable util para calcular la frecuencia del armonico

while F_armonico < BW
    f = (F_armonico)/Fs;%calculo de frecuencia normalizada
    y = amp*sin(2*pi*f*n);%Calculo de los valores de la función muestreada. Transformacion de la señal de analogica a digital
    unicoVector = [unicoVector,y];%Vector que almacena todos los armonicos de F 
    cantidad_de_armonicos = (size(unicoVector))/(size(n));
    armonico = armonico + 1 ;%Variable util para aumentar los armonicos de F, entiendas F1, F2, F3...
    F_armonico = F*armonico;%Calculo de la frencuencia del armonico 
end
str = sprintf( '%s %.5g %s %.1g ', 'Cantidad de armonicos generado para F = ',F,':',cantidad_de_armonicos);
display(str)%Mensaje resumen de la funcion

sound(unicoVector,Fs); %Funcion utilizada para reproducir los las frecuencias y armonicos muestreados 



