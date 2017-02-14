function ASK(b,fc)
%Modulación  ASK
%Ejemplo de llamado de la funcion: ASK([1 0 1 1 0],2)

%Analizo el número de argumentos
if nargin > 2
    error('Esta ingresando demasiados argumentos')
elseif nargin==1
    fc=1;
end

%analizo el valor de la frecuencia de la portadora
if fc<1;
    error('La frecuencia de la portadora debe ser mayor que 1');
end

%inicializo variables
t=0:2*pi/99:2*pi;
cp=[];
mod=[];
bit=[];

%resuelvo la mod
for i=1:length(b);
    if b(i)==0;
        die=ones(1,100);
        se=zeros(1,100);
    else b(i)==1;
        die=2*ones(1,100);
        se=ones(1,100);
    end
    c=cos(fc*t);
    cp=[cp die];
    mod=[mod c];
    bit=[bit se];
end  
ask=cp.*mod;

%graficamos
subplot(2,1,1);plot(bit,'LineWidth',1.5);
grid on;
title('Senial Binaria');
axis([0 100*length(b) -2.5 2.5]);
 
subplot(2,1,2);plot(ask,'LineWidth',1.5);
grid on;
title('Modulacion ASK');
axis([0 100*length(b) -2.5 2.5]);

