Ntotal=22050;
n=(1:1:200)';

Fs = 44100 ;
f1 = 3000 ;
f2 = 6000 ;
f3 = 9000 ;

x1=sin(2*pi*(f1/Fs)*n);%Señal de frecuencia f1
x2=2*sin(2*pi*(f2/Fs)*n);%Señal de frecuencia f2
x3=sin(2*pi*(f3/Fs)*n);%Señal de frecuencia f3
added_signals = x1 +x2 + x3;% señal con frecuencias f1, f2, f3


%señal a procesar: datos + ruido
xn=added_signals;

%Dimensiones de la señal de entrada
MN=size(xn);
L=MN(1);

%Salida
yn=(zeros(1,L))';


%Coeficientes del filtro FIR
MN=size(Num);
M=MN(2);%orden del filtro+1
h=(Num)';
data=(zeros(1,M))';
g=1;%ganancia de la senal filtrada 


%Implementación del filtro
for i=1:L
    data(1)=xn(i,1);    
    tot=0;
    for k=1:M
       tot=tot+data(k)*h(k);
    end
    for p=1:(M-1)
        data(M+1-p)=data(M-p);
    end    
    yn(i,1)=g*tot;
end


figure(1)
subplot(3,1,1);
stem(n,yn)
title("Señal filtrada");
ylim([-4 4]);
subplot(3,1,2); 
stem(n,x2)
title(['Señal (Tono) puro con frecuencia f = ',sprintf('%d',f2), ' Hz'])
ylim([-4 4]);
subplot(3,1,3); 
stem(n,added_signals)
title(['Señal de entrada added_signals = x1(f1) + x2(f2) + x3(f3)'])
ylim([-4 4]);
