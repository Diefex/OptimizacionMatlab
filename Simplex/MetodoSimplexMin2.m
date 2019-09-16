%Metodo Simplex Matlab
%Minimizacion Ejercicio 2
%Diego Velez 20172020075

clc, clear

%matriz inicial
Ai = [800 1000; %Restriccion 1
       140  70; %Restriccion 2
       0.4  0.8]; %Funcion objetivo
Ai(:,end+1) = [8000 700 0]; %Valores iniciales

disp(Ai)

A(:, 1) = Ai(1, :);
A(:, 2) = Ai(2, :);
A(:, 3) = [1 0 0];
A(:, 4) = [0 1 0];
A(:, 5) = Ai(end, :);

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

x1 = -1*A(end, 3)
x2 = -1*A(end, 4)
z = -1*A(end, end)