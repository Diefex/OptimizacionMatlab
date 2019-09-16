%Metodo Grafico Matlab
%Maximizacion Ejercicio 1
%Diego Velez 20172020075

clc, clear

x = 0:0.001:60; %Vector X

r1 = 90 - (3/2)*x; %Restirccion 
r2 = 100 - 2*x; %Restriccion

%Pone el punto A
xA = 0; 
yA = 0; 
%Encuentra el punto B
idx = find(r2 == zeros(size(x))); %interseccion de r2 con el eje x
xB = x(idx); 
yB = r2(idx);
%Encuentra el punto C
idx = find(r1 == r2); %interseccion entre las restricciones
xC = x(idx); 
yC = r1(idx);
%Encuentra el punto D
xD = x(1); 
yD = r1(1);

hold on
%Grafica las restricciones
plot(x, r1)
plot(x, r2)
plot(x, zeros(size(x)), 'r')
%Grafica los puntos interseccion
plot(xA, yA, 'ro', 'MarkerSize', 5)
plot(xB, yB, 'ro', 'MarkerSize', 5)
plot(xC, yC, 'ro', 'MarkerSize', 5)
plot(xD, yD, 'ro', 'MarkerSize', 5)
hold off

%Encuentra la solucion optima
zA = (500*xA)+(300*yA);
zB = (500*xB)+(300*yB);
zC = (500*xC)+(300*yC);
zD = (500*xD)+(300*yD);

z = max([zA,zB,zC,zD])

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
if z == zD
    x1 = xD
    x2 = yD
end