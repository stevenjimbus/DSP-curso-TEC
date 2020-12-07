n = 0 : 1 : 10;
x_n = (0.5).^n;

n2 = 0 : 1 : 10; 
y = 0 : 1 : 10;

for i = 1:10
    y(i) = x_n(i+1);%Desplazamiento de senal digital    
end

figure(1);
clf;
%muestreo 2
subplot(2,1,2);
stem(n2,y,'b');
hold on;

%muestreo 1
subplot(2,1,1);
stem(n,x_n,'r');
hold on;





