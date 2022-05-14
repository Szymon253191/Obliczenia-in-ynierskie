%% ENVIRONMENT PREPERATION
clear;
clc;
close all;

%% DIFFERENTIAL x(t) = e^(a*t)

a1 = 1;
h1 = 0.02; % step length
x1 = 3; % stop time

t1 = 0:h1:x1;
analitic1 = [];

t_h = 0:h1:x1;
numeric1 = [1];
hold on;

for i = 1:1:length(t1)
    analitic1(i) = exp(a1 * t1(i));
end

plot(linspace(0,x1,length(t1)), analitic1, 'b');
hold on;

for j = 2:1:length(t_h)
    numeric1(j) = numeric1(j-1) + h1 * a1 * numeric1(j-1);
end

stairs(t_h,numeric1, 'r');
xlabel('t'); ylabel('x(t)');
legend('Metoda analityczna', 'Metoda numeryczna');

for i = 1:1:length(t1)
    err1(i) = numeric1(i) - analitic1(i);
end

figure(2)
plot(linspace(0,x1,length(t1)), err1, 'b');
xlabel('t'); ylabel('x_{num}(t) - x_{an}(t)');

%% DIFFERENTIAL x(t) = e^(a*t)

a2 = 1;
h2 = 0.1;

c1 = 0;
func = [];
func(1) = c1;

c2 = 1;
deriv_func = [];
deriv_func(1) = c2;

% NUMERICAL METHOD

for i = 2:1:1000
    func(i) = func(i-1) + h2 * deriv_func(i-1);
    deriv_func(i) = deriv_func(i-1) - h2 * a2 * func(i);
end

t2 = 0:0.15:1000;
func_an = [];
deriv_func_an = [];

% ANALYTICAL METHOD

for i = 1:1:length(t2);
    func_an(i) = sin(1/10*t2(i));
    deriv_func_an(i) = cos(1/10*t2(i));
end

for i = 2:1:1000
    err_sin(i) = func(i) - sin(1/10*t2(i));
    err_cos(i) = deriv_func(i) - cos(1/10*t2(i));
end

figure(3)
hold on;
plot(func, 'r')
plot(deriv_func, 'b')
xlabel('t'); ylabel('x(t)');
title(' Metoda numeryczna');
legend('v_1(t) - funkcja','v_2(t) - pochodna funkcji');
grid on;

figure(4)
hold on
plot(linspace(1,1000,length(t2)), func_an, 'b');
plot(func,'-.r')
title('Sinus');
xlabel('t');
ylabel('v_1(t)');
legend('Rozwiązanie analityczne','Rozwiązanie numeryczne')
grid on

figure(5)
hold on
plot(linspace(1,1000,length(t2)), deriv_func_an, 'b');
plot(deriv_func,'-.r')
title('Cosinus');
xlabel('t'); ylabel('v_2(t)');
legend('Rozwiązanie analityczne','Rozwiązanie numeryczne')
hold on
grid on

figure(6)
hold on
plot(err_sin, 'r');
plot(err_cos, 'b');
legend('v_1(t)', 'v_2(t)');
xlabel('t');
ylabel('x_n_u_m(t) - x_a_n(t)');