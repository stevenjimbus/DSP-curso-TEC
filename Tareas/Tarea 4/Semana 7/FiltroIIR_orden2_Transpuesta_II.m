%Filtro IIR orden 2 en forma Transpuesta II

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
wn=0; %w(n)
wmenos1=0; %w(n-1)
wmenos2=0; %w(n-2)

%Implementación del filtro
for i=1:L
    wn = g*xn(i,1)-a(2)*wmenos1-a(3)*wmenos2;
    yn(i,1)=b(1)*wn+b(2)*wmenos1+b(3)*wmenos2;
    wmenos2=wmenos1;
    wmenos1=wn;
end


figure(3);
stem(n,yn);






