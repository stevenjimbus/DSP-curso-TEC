Ntotal=22050;
n=(1:1:500)';
x1=sin(2*pi*(1/100)*n);
%noise=x1+0.3*sin(2*pi*(10/441)*n)+0.3*sin(2*pi*(50/441)*n);
noise=awgn(x1,20);%agregando una componente de ruido
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

%desde SOS importado
b=[SOS(1),SOS(2),SOS(3)];%numerador [b1, b2, b3]
a=[SOS(4),SOS(5),SOS(6)];%denominador  [a1, a2, a3]
g=G(1);%ganancia


%Ecuación de diferencias del filtro de orden 2
%a1y(n)=-a2y(n-1)-a3y(n-2)+g*b1x(n)+g*b2x(n-1)+g*b3x(n-2)

%condiciones iniciales

%canal 1
xmenos1=0; %x(n-1)
xmenos2=0; %x(n-2)
ymenos1=0; %y(n-1)
ymenos2=0; %y(n-2)

%Implementación del filtro
for i=1:L
    yn(i,1)=g*(b(1)*xn(i,1)+b(2)*xmenos1+b(3)*xmenos2)-a(2)*ymenos1-a(3)*ymenos2;
    ymenos2=ymenos1;
    ymenos1=yn(i,1);
    xmenos2=xmenos1;
    xmenos1=xn(i,1);
end


figure(3);
stem(n,yn);






