clear;
close all;
clc;

% inicjacja punktów początkowych

A = [100,0];
B = [100,100];
C = [0,100];
D = [0,0];

wektor = [0 0 0 0 0 0 0 0];

% długości kroków

N = 510; % ilość kroków
step = 0.2; % dlugosc kroku

stepA = step;
stepB = step;
stepC = step;
stepD = step;

% rozłożenie drogi na dwa wymiary X i Y
xA = (N);
yA = (N);
xB = (N);
yB = (N);
xC = (N);
yC = (N);
xD = (N);
yD = (N);

for i=1:1:N
    % A -> B
    A(1) = A(1) + wektor(1);
    A(2) = A(2) + wektor(2);
    
    xA(i) = (A(1));
    yA(i) = (A(2));
    
    nx = B(1) - A(1);
    ny = B(2) - A(2);
    
    sa = (nx^2 + ny^2)^(1/2);
    
    wektor(1) = nx/sa * stepA; 
    wektor(2) = ny/sa * stepA;
    
    % B -> A
    B(1) = B(1) + wektor(3);
    B(2) = B(2) + wektor(4);
    
    xB(i) = (B(1));
    yB(i) = (B(2));
    
    nx = C(1) - B(1);
    ny = C(2) - B(2);
    
    sb = (nx^2 + ny^2)^(1/2);
    
    wektor(3) = nx/sb * stepB; 
    wektor(4) = ny/sb * stepB;
    
    % C -> D
    C(1) = C(1) + wektor(5);
    C(2) = C(2) + wektor(6);
    
    xC(i) = (C(1));
    yC(i) = (C(2));
    
    nx = D(1) - C(1);
    ny = D(2) - C(2);
    
    sc = (nx^2 + ny^2)^(1/2);
    
    wektor(5) = nx/sc * stepC; 
    wektor(6) = ny/sc * stepC;
    
    % D -> A
    D(1) = D(1) + wektor(7);
    D(2) = D(2) + wektor(8);
    
    xD(i) = (D(1));
    yD(i) = (D(2));
    
    nx = A(1) - D(1);
    ny = A(2) - D(2);
    
    sd = (nx^2 + ny^2)^(1/2);
    
    wektor(7) = nx/sd * stepD; 
    wektor(8) = ny/sd * stepD;
   
    
    if sa <= stepA + 0.1
        stepA = stepA - stepA/10;
    end
    if sb <= stepB + 0.1
        stepB = stepB - stepB/10;
    end
    if sc <= stepC + 0.1
        stepC = stepC - stepC/10;
    end
    if sd <= stepD + 0.1
        stepD = stepD - stepD/10;
    end

    
    plot(xA,yA,xB,yB,xC,yC,xD,yD);
    axis([-1 101 -1 101])
end
wynik = drogaA
