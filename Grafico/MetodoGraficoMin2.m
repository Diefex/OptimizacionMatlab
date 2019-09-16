%Metodo Grafico Matlab
%Minimizacion Ejercicio 2
%Diego Velez 20172020075

clc, clear

x = 0:0.001:11; %Vector X

r1 = 10 - 2*x; %Restirccion 
r2 = 8 - (4/5)*x; %Restriccion

%Encuentra el punto A
idx = find(r2 == zeros(size(x))); %interseccion de r2 con el eje x
xA = x(idx); 
yA = r2(idx);
%Encuentra el punto B
idx = find(r1 == 6.67); %interseccion entre las restricciones
xB = x(idx);
yB = r1(idx);
%Encuentra el punto C
xC = x(1); 
yC = r1(1);

hold on
%Grafica las restricciones
plot(x, r1)
plot(x, r2)
plot(x, zeros(size(x)), 'r')
%Grafica los puntos interseccion
plot(xA, yA, 'ro', 'MarkerSize', 5)
plot(xB, yB, 'ro', 'MarkerSize', 5)
plot(xC, yC, 'ro', 'MarkerSize', 5)
hold off

%Encuentra la solucion optima
zA = (0.4*xA)+(0.8*yA);
zB = (0.4*xB)+(0.8*yB);
zC = (0.4*xC)+(0.8*yC);

z = min([zA,zB,zC])

if z == zA
    x1 = xA
    x2 = yA
end
if z == zB
    x1 = xB
    x2 = yB
end
if z == zC
    x1 = xC
    x2 = yC
end