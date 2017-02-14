function FSK(b,f0,f1)
%modulacion FSK 
%ejemplo modo de entrada de la funcion: FSK([1 0 1 1 0],1,2)

%analizo el numero de argumentos ingresados
if nargin > 3
    error('Esta ingresando demasiados argumentos')
elseif nargin==1
    f0=1;
    f1=2;
elseif nargin==2
    f1=2;
end

%compruebo que los valores de las frecuencias sean enteras
val0=ceil(f0)-f0;
val1=ceil(f1)-f1;
if val0 ~=0 || val1 ~=0;
    error('La frecuencia debe ser un numero entero');
end

%analizo que los valores de la frecuencia no sean menores que uno
if f0<1 || f1<1;
    error('La frecuencia debe ser mayor que uno');
end
 
%inicializo variables 
t=0:2*pi/99:2*pi;
cp=[];
mod=[];
bit=[];

%inicio la mod
for i=1:length(b);
    if b(i)==0;
        die=ones(1,100);
        c=cos(f0*t);
        se=zeros(1,100);
    else b(i)==1;
        die=ones(1,100);
        c=cos(f1*t);
        se=ones(1,100);
    end
    cp=[cp die];
    mod=[mod c];
    bit=[bit se];
end
 
fsk=cp.*mod;

%graficamos
subplot(2,1,1);plot(bit,'LineWidth',1.5);
grid on;
title('Senial Binaria');
axis([0 100*length(b) -2.5 2.5]);
 
subplot(2,1,2);plot(fsk,'LineWidth',1.5);
grid on;
title('Modulacion FSK');
axis([0 100*length(b) -2.5 2.5]);


