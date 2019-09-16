%Metodo Simplex Matlab
%Maximizacion Ejercicio 1
%Diego Velez 20172020075

clc, clear

X = [0,0]; %Variables

%matriz inicial
A = [20  10  1   0; %Restriccion 1
     3   2   0   1; %Restriccion 2
    500 300  0   0]; %Funcion objetivo
A(:,end+1) = [1000 180 0]; %Valores iniciales

disp(A)

filas = size(A,1); %numero de filas de la matriz

while max(0 < max(A(filas, :)))
    %Encuentra el maximo de la ultima fila
    [M, iCol] = max(A(filas, :));

    %Encuentra el pivote
    m = inf;
    for k = filas-1:-1:1
        if m > A(k, end)/A(k,iCol)
            m = A(k, end)/A(k,iCol);
            iFil = k;
        end
    end
    
    X(iFil) = iCol; %Pone la variable entrante

    %Convierte el pivote en 1
    A(iFil, :) = A(iFil, :)/A(iFil, iCol);
    disp(A)

    for f = 1:1:filas
        if f ~= iFil
            A(f, :) = (-1*A(f, iCol)*A(iFil, :)) + A(f, :);
        end
    end

    disp(A)
end

x1 = A(X(1), end)
x2 = A(X(2), end)
z = -1*A(end, end)