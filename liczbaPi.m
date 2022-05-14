clear;
format long;

ilosc_punktow = 100000
punkty_w_kole = 0;
X = (1:ilosc_punktow);
Y = (1:ilosc_punktow);
N = (1:ilosc_punktow);
for i = 1:1:ilosc_punktow
    x = (rand(1)*2 - 1);
    y = (rand(1)*2 - 1);
    X(i) = x;
    Y(i) = y;
    if x^2 + y^2 <= 1
        punkty_w_kole = punkty_w_kole + 1;
    end

    if x^2 + y^2 <= 1
        punkty_w_kole = punkty_w_kole + 1;
    end
    approx = 4*(punkty_w_kole/ilosc_punktow);
    err = abs(pi - approx);
end

plot(X,Y,'g.')
hold on;

x = [1 -1 -1 1 1];
y = [1 1 -1 -1 1];
axis([-1.25 1.25 -1.25 1.25]);
plot(x,y,'b-','LineWidth',0.5);
hold on;
axis equal;

r = 1; a = 0; b = 0;
t = linspace(0,2*pi,200);
x = a + r*cos(t);
y = b + r*sin(t);
plot(x,y,'r-','LineWidth',0.5);
hold on;

approx_pi = 2*(punkty_w_kole/ilosc_punktow);
result = approx_pi;
disp('Przyblizenie liczby pi: ');
disp(result);
err_pi = abs(pi - approx_pi);
disp('Blad przyblizenia: ');
disp(err_pi);

