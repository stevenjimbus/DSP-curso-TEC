Fs = 44100 ;

f1 = 3000 ;
f2 = 6000 ;
f3 = 9000 ;

Ntotal=22050;
n=(1:1:500)';
x1=sin(2*pi*(f2/Fs)*n);
noise = x1 + sin(2*pi*(f1/Fs)*n) + sin(2*pi*(f3/Fs)*n);

diferencia_contra_noise = x1 - noise;

%noise=x1+0.1*sin(2*pi*(10/441)*n)+0.05*sin(2*pi*(50/441)*n);
%noise=awgn(x1,5);%agregando una componente de ruido
figure(1);
stem(n,x1);
figure(2);
stem(n,noise);

%sound(noise,44100);

%señal a procesar: datos + ruido
xn=noise;

%Dimensiones de la señal de entrada
MN=size(xn);
L=MN(1);

%Salida
yn=(zeros(1,L))';


%Coeficientes del filtro
%a=[1,0,0];%Denominador [a0, a1, a2]
%b=[1,0,0];%Numerador  [b0, b1, b2]
%g=1;%ganancia

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ETAPA 1: orden 2
%SOS importado
b=[SOS(1,1),SOS(1,2),SOS(1,3)];%numerador [b1, b2, b3]
a=[SOS(1,4),SOS(1,5),SOS(1,6)];%denominador  [a1, a2, a3]
g=G(1);%ganancia


%Ecuación de diferencias del filtro de orden 2
%a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)

%condiciones inciales
xmenos1=0; %x(n-1)
xmenos2=0; %x(n-2)
ymenos1=0; %y(n-1)
ymenos2=0; %y(n-2)

for i=1:L
    yn(i,1)=g*(b(1)*xn(i,1)-b(3)*xmenos2)-a(2)*ymenos1-a(3)*ymenos2; %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)
    ymenos2=ymenos1;
    ymenos1=yn(i,1);
    xmenos2=xmenos1;
    xmenos1=xn(i,1);
end
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %ETAPA 2: orden 2
% %SOS importado
b=[SOS(2,1),SOS(2,2),SOS(2,3)];%Denominador [a0, a1, a2]
a=[SOS(2,4),SOS(2,5),SOS(2,6)];%Numerador  [b0, b1, b2]
g=G(2);%ganancia


%Ecuación de diferencias del filtro de orden 2
%a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)

%condiciones inciales
xn=yn;
xmenos1=0; %x(n-1)
xmenos2=0; %x(n-2)
ymenos1=0; %y(n-1)
ymenos2=0; %y(n-2)

for i=1:L
    yn(i,1)=g*(b(1)*xn(i,1)-b(3)*xmenos2)-a(2)*ymenos1-a(3)*ymenos2; %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)
    ymenos2=ymenos1;
    ymenos1=yn(i,1);
    xmenos2=xmenos1;
    xmenos1=xn(i,1);
end


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %ETAPA 3: orden 2
% %SOS importado
b=[SOS(3,1),SOS(3,2),SOS(3,3)];%Denominador [a0, a1, a2]
a=[SOS(3,4),SOS(3,5),SOS(3,6)];%Numerador  [b0, b1, b2]
g=G(3);%ganancia


%Ecuación de diferencias del filtro de orden 2
%a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)

%condiciones inciales
xn=yn;
xmenos1=0; %x(n-1)
xmenos2=0; %x(n-2)
ymenos1=0; %y(n-1)
ymenos2=0; %y(n-2)

for i=1:L
    yn(i,1)=g*(b(1)*xn(i,1)-b(3)*xmenos2)-a(2)*ymenos1-a(3)*ymenos2; %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)
    ymenos2=ymenos1;
    ymenos1=yn(i,1);
    xmenos2=xmenos1;
    xmenos1=xn(i,1);
end


figure(3);
stem(n,yn);

diferencia_contra_yn = x1 - yn;

figure(4);
plot(n,diferencia_contra_noise)

figure(5);
plot(n,diferencia_contra_yn)

% sound(xn,Fs)
% pause(1)
% sound(noise,Fs)
% pause(1)
% sound(yn,Fs)



