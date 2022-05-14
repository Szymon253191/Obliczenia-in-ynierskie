clear;
close all;
clc;

zakres = 100
tic
M = (2:zakres);
pierwsze = [2];
rozmiar = 2;
N = (1:zakres);
Y = (1:zakres);
czas1= (zakres);
czas2= (zakres);
czas3= (zakres);
for j = 2:zakres-1
    for i = j:zakres-1
        A = mod(M,j);
        if A(i) == 0
            M(i) = 0;
        end
    end
    czas1(j) = toc;
end
for i = 2:1:zakres-1
    if M(i) > 1
        pierwsze(rozmiar) = M(i);
        rozmiar = rozmiar + 1;
    end
    czas2(i) = toc;
end
for i = 1:1:zakres
    k = 0;
        for j = 1:1:length(pierwsze)
            if pierwsze(j) >= i
                break
            end
        k = k + 1;
    end
    Y(i) = k;
    czas3(i) = toc;
end
czas3(end)=[];
wynik = rozmiar - 1
for i = 1:1:zakres-1 % liczy nie wyświetla
   czas=(czas1(i)+czas2(i)+czas3(i))/3;
   plot(czas,N-1,'o')
end

plot(N,Y)
grid on; hold on;
xlabel('Zakres liczb');
ylabel('Wartość zbioru liczb pierwszych');


xlabel('Zakres liczb');
ylabel('Czas');