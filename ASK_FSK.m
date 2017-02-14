%PROGRAMA QUE GRAFICA LA MODULACION ASK O FSK, SEGUN OPCION DE MENU
%AUTOR: Grace BOrja Erazo
%SISTEMAS DE COMUNICACIÓN

%Limpio ventana, variables y cierro ventanas
clc;
clear all;
close all;

%Presento el menu del programa
disp('Prgrama para modulacion ASK y FSK');
disp('1. Modulacion ASK');
disp('2. Modulacion FSK');
disp('3. Salir');
m=input('\nIngrese el tipo de modulacion que desea: ');

%analizo la opcion del menu
switch m
    case 1
        disp('');
        disp('MODULACION ASK');
        disp('Ingrese los siguientes datos:');
        b1=input('\nIngrese el Vector Binario: ejemplo:[0 1 0 0 1 1]:  ');
        fc=input('\nIngrese la frecuencia de la portadora:  ');
        %llamo a la funcion ASK
        ASK(b1,fc)
        
    case 2
        disp('');
        disp('MODULACION FSK');
        disp('Ingrese los siguientes datos:');
        b=input('\nIngrese el Vector Binario: ejemplo:[0 1 0 0 1 1]:  ');
        f0=input('\nIngrese la primera frecuencia:  ');
        f1=input('\nIngrese la segunda frecuencia:  ');
        %llamo a la funcion FSK
        FSK(b,f0,f1)
        
    case 3 
        break;
        
    otherwise
        disp('Ingrese un numero valido');
        
end
        
        


    
   
