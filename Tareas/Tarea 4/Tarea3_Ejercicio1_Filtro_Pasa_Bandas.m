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


figure(1);
stem(n,x2);%grafica de señal con frecuencias f2
figure(2);
stem(n,added_signals);%grafica de señal con frecuencias f1, f2, f3

%señal a procesar: datos + ruido
xn=added_signals;

%Dimensiones de la señal de entrada
MN=size(xn);
L=MN(1);

%Salida
yn=(zeros(1,L))';



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ETAPA 1: orden 2
%SOS importado
b=[SOS(1,1),SOS(1,2),SOS(1,3)];%numerador [b1, b2, b3]
a=[SOS(1,4),SOS(1,5),SOS(1,6)];%denominador  [a1, a2, a3]
g=G(1);%ganancia


%Ecuación de diferencias del filtro de orden 2
%a0y(n)+a1y(n-1)+a2y(n-2)=s1(x(n) - x(n-2))

%condiciones inciales
xmenos1=0; %x(n-1)
xmenos2=0; %x(n-2)
ymenos1=0; %y(n-1)
ymenos2=0; %y(n-2)

for i=1:L
    yn(i,1)=g*(xn(i,1) - xmenos2)-a(2)*ymenos1-a(3)*ymenos2; %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)
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
%a0y(n)+a1y(n-1)+a2y(n-2)=s1(x(n) - x(n-2))

%condiciones inciales
xn=yn;
xmenos1=0; %x(n-1)
xmenos2=0; %x(n-2)
ymenos1=0; %y(n-1)
ymenos2=0; %y(n-2)

for i=1:L
    yn(i,1)=g*(xn(i,1) - xmenos2)-a(2)*ymenos1-a(3)*ymenos2; %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)
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
%a0y(n)+a1y(n-1)+a2y(n-2)=s1(x(n) - x(n-2))

%condiciones inciales
xn=yn;
xmenos1=0; %x(n-1)
xmenos2=0; %x(n-2)
ymenos1=0; %y(n-1)
ymenos2=0; %y(n-2)

for i=1:L
    yn(i,1)=g*(xn(i,1) - xmenos2)-a(2)*ymenos1-a(3)*ymenos2; %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)
    ymenos2=ymenos1;
    ymenos1=yn(i,1);
    xmenos2=xmenos1;
    xmenos1=xn(i,1);
end

% sound(x2,Fs)
% pause(1)
% sound(added_signals,Fs)
% pause(1)
% sound(yn,Fs)

figure(3)
subplot(2,1,1);
stem(n,yn)
title("Señal filtrada");
subplot(2,1,2); 
stem(n,x2)
%title("Señal con frecuencia f2");
title(['Señal (Tono) puro con frecuencia f = ',sprintf('%d',f2), ' Hz'])

figure(4)
subplot(3,1,1);
stem(n,yn)
title("Señal filtrada");
ylim([-4 4]);
subplot(3,1,2); 
stem(n,x2)
%title("Señal con frecuencia f2");
title(['Señal (Tono) puro con frecuencia f = ',sprintf('%d',f2), ' Hz'])
ylim([-4 4]);
subplot(3,1,3); 
stem(n,added_signals)
%title("Señal con frecuencia f2");
title(['Señal de entrada added_signals = x1(f1) + x2(f2) + x3(f3)'])
ylim([-4 4]);


