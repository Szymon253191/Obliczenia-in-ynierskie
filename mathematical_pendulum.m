%% ENVIRONMENT PREPERATION
clear;
clc;
close all;

%% MATHEMATICAL PENDULUM

h = 0.1;
t = 0:h:100;
theta = pi/180;
g = 9.81;
l = 10;
m = 0.01;
analitic = [];

% ANALYTICAL METHOD
for i = 1:1:length(t)
    analitic(i) = theta*cos(t(i)/(sqrt(g/l)));
end

v2 = [];
v2(1) = 0;
y2 = [];
y2(1) = theta;

% NUMERICAL METHOD
for i = 2:1:length(t)
    v2(i) = v2(i-1) - h * (g/l) * sin(y2(i-1));
    y2(i) = y2(i-1) + v2(i) * h;
end
hold on;
plot(t, y2, 'r');
xlabel('Czas'); ylabel('Położenie');
legend('Metoda numeryczna');

figure(2)
plot(t, analitic, 'b');
xlabel('Czas'); ylabel('Położenie');
legend('Metoda analityczna');

figure(3);
plot(t, y2, 'r', t, analitic, 'b');
xlabel('Czas'); ylabel('Położenie');
legend('Metoda numeryczna', 'Metoda analityczna');