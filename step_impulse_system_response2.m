%% ENVIRONMENT PREPERATION
clear;
clc;
close all;

%% CASE SELECTION

select = 4;

%% VARIABLES

switch select
    case 1
        s1 = -2;
        s2 = -4;
    case 2
        s1 = -3;
        s2 = 0;
    case 3
        s1 = -2;
        s2 = 2;
    case 4
        s1 = -2 + 10i;
        s2 = -4 - 10i;
    case 5
        s1 = 0 + 3i;
        s2 = 0 - 2i;
    case 6
        s1 = 3 - 1i;
        s2 = 2 + 2i;
end

%% K(s)
K = tf(1,[1, (1-s1), (1-s2)])

% step
figure(1)
subplot(2, 1, 1);
stepplot(K, 'g');
grid on;

% impulse
subplot(2, 1, 2);
impulse(K, 'b');
grid on;

figure(2)
pzmap(K);
zero(K);