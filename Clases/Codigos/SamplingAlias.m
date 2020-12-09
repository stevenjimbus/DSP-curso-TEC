%Funcion Ejercicio8(F,Fs,k)

%F = frecuencia de la senal en tiempo continuo
%Fs = frecuencia de muestreo
%k = el k-esimo alias positivo

function [  ] = SamplingAlias(F,Fs,k)
	clf
	subplot(2,1,1);
	hold
	x = linspace(0,2,1000);
	plot(x,sin(2*pi*F*x),'r','Linewidth',2);
	
 	fa = F/Fs;
	na = [0:1/Fs:2];
	n = [0:2*Fs];
	ya = sin(2*pi*(fa)*n);
	stem(na,ya);
    title('Senal continua y muestreada a Fs')
    
	fk = fa + k;	
	yk = sin(2*pi*(fk)*n);
	subplot(2,1,2);
    stem(na,yk);
	title('k alias de la senal discreta')
    
	print -dpng -r100 Picture8.png


			
end
 
