%Filtro FIR orden 2 en forma Transpuesta II

n=(1:1:200)';
x1=sin(2*pi*(1/100)*n);%+sin(2*pi*(10000/44100)*n);
%noise=x1+0.3*sin(2*pi*(10/441)*n)+0.3*sin(2*pi*(50/441)*n);
noise=awgn(x1,20);%agregando una componente de ruido
figure(1);
stem(n,x1);
figure(2);
stem(n,noise);

%sound(noise,44100);

%señal a procesar: datos + ruido
xn=x1;

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
g=1.3819%1.4803;%ganancia


%Ecuación de diferencias del filtro de orden 2
%y(n)=h1x(n)+h2x(n-1)+h3x(n-2)+...+h33x(n-32)


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


figure(3);
stem(n,yn);



figure(4)
subplot(2,1,1);
stem(n,yn)
title("Señal filtrada");
ylim([-4 4]);
subplot(2,1,2); 
stem(n,xn);%xn=sin(2*pi*(1/100)*n);
%title("Señal con frecuencia f2");
title(['Senal entrada'])% xn=sin(2*pi*(1/100)*n);
ylim([-4 4]);





