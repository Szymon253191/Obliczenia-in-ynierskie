clear;
close all;
clc;

for ilosc_wymiarow = 1:15
    ilosc_punktow = 100000;
    k = 0;
    promien = 0;
    wspolrzedne = rand(ilosc_wymiarow,ilosc_punktow)*2-1;
    for R = 1:ilosc_punktow*ilosc_wymiarow
        promien = promien+wspolrzedne(R)^2;
        if(mod(R,ilosc_wymiarow)==0)
            if(1>=sqrt(promien))
                k = k+1;
            end
            promien = 0;
        end
    end
    wymiar = ilosc_wymiarow
    wynik = k/ilosc_punktow*2^ilosc_wymiarow
    
    plot(wymiar,wynik,'bo')
    grid on; hold on;
end

