%uiopen('C:\Users\steve\Desktop\DSP curso TEC\Tareas\Tarea 3\La_5a_Estaci�n_-_El_Sol_No_Regresa1.wav',1)


%Dimensiones de la se�al de entrada
MN=size(data);
L=MN(1);
qty_of_channel = MN(2);

%Salida
yn=(zeros(qty_of_channel,L))';


%Coeficientes del filtro
%a=[1,0,0];%Denominador [a0, a1, a2]
%b=[1,0,0];%Numerador  [b0, b1, b2]
%g=1;%ganancia


for k=1:qty_of_channel
    xn = data(:,k);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ETAPA 1: orden 2
    % SOS importado
    b=[SOS(1,1),SOS(1,2),SOS(1,3)];%numerador [b1, b2, b3]
    a=[SOS(1,4),SOS(1,5),SOS(1,6)];%denominador  [a1, a2, a3]
    g=G(1);%ganancia


    %Ecuaci�n de diferencias del filtro de orden 2
    %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)

    %condiciones inciales
    xmenos1=0; %x(n-1)
    xmenos2=0; %x(n-2)
    ymenos1=0; %y(n-1)
    ymenos2=0; %y(n-2)

    for i=1:L
        yn(i,k)=g*(b(1)*xn(i,1)-b(3)*xmenos2)-a(2)*ymenos1-a(3)*ymenos2; %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)
        ymenos2=ymenos1;
        ymenos1=yn(i,k);
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


    %Ecuaci�n de diferencias del filtro de orden 2
    %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)

    %condiciones inciales
    xn=yn;
    xmenos1=0; %x(n-1)
    xmenos2=0; %x(n-2)
    ymenos1=0; %y(n-1)
    ymenos2=0; %y(n-2)

    for i=1:L
        yn(i,k)=g*(b(1)*xn(i,1)-b(3)*xmenos2)-a(2)*ymenos1-a(3)*ymenos2; %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)
        ymenos2=ymenos1;
        ymenos1=yn(i,k);
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


    %Ecuaci�n de diferencias del filtro de orden 2
    %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)

    %condiciones inciales
    xn=yn;
    xmenos1=0; %x(n-1)
    xmenos2=0; %x(n-2)
    ymenos1=0; %y(n-1)
    ymenos2=0; %y(n-2)

    for i=1:L
        yn(i,k)=g*(b(1)*xn(i,1)-b(3)*xmenos2)-a(2)*ymenos1-a(3)*ymenos2; %a0y(n)+a1y(n-1)+a2y(n-2)=b0x(n) - b2x(n-2)
        ymenos2=ymenos1;
        ymenos1=yn(i,k);
        xmenos2=xmenos1;
        xmenos1=xn(i,1);
    end

end


sound(data,fs)
pause(1+L*(1/fs))
sound(yn,fs)
pause(1+L*(1/fs))
sound(data,fs)
disp('codigo ha terminado')





