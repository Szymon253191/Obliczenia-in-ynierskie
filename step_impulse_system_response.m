%% ENVIRONMENT PREPERATION
clear;
clc;
close all;

%% VARIABLES
T1 = 1;
T2 = 3;
T3 = 5;

k1 = 1;
k2 = 3;
k3 = 5;

%% K_1
figure(1)

% sys(1)=tf(1,[T 1]);
up1 = 1;
down1 = [T1, 1];
up2 = 1;
down2 = [T2, 1];
up3 = 1;
down3 = [T3, 1];

K4_1 = tf(up1, down1);
K4_2 = tf(up2, down2);
K4_3 = tf(up3, down3);

% step

subplot(2, 1, 1);
hold on;

stepplot(K4_1)
stepplot(K4_2)
stepplot(K4_3)

title('Step Response K_1(s)')
legend('T = 1, k = 1', 'T = 3, k = 3', 'T = 5, k = 5');
grid on;

% impulse

subplot(2, 1, 2);
hold on;

impulse(K4_1)
impulse(K4_2)
impulse(K4_3)

title('Impulse Response K_1(s)')
legend('T = 1, k = 1', 'T = 3, k = 3', 'T = 5, k = 5');
grid on;

%% K_2
figure(2)

% sys(2)=tf([1 0],[T 1]);
up1 = [1 0];
down1 = [T1, 1];
up2 = [1 0];
down2 = [T2, 1];
up3 = [1 0];
down3 = [T3, 1];

K4_1 = tf(up1, down1);
K4_2 = tf(up2, down2);
K4_3 = tf(up3, down3);

% step

subplot(2, 1, 1);
hold on;

stepplot(K4_1)
stepplot(K4_2)
stepplot(K4_3)

title('Step Response K_2(s)')
legend('T = 1, k = 1', 'T = 3, k = 3', 'T = 5, k = 5');
grid on;

% impulse

subplot(2, 1, 2);
hold on;

impulse(K4_1)
impulse(K4_2)
impulse(K4_3)

title('Impulse Response K_2(s)')
legend('T = 1, k = 1', 'T = 3, k = 3', 'T = 5, k = 5');
grid on;

%% K_3
figure(3)

% sys(3)=tf([0 k],[1 0]);
up1 = [0 k1];
down1 = [1 0];
up2 = [0 k2];
down2 = [1 0];
up3 = [0 k3];
down3 = [1 0];

K4_1 = tf(up1, down1);
K4_2 = tf(up2, down2);
K4_3 = tf(up3, down3);

% step

subplot(2, 1, 1);
hold on;

stepplot(K4_1)
stepplot(K4_2)
stepplot(K4_3)

title('Step Response K_3(s)')
legend('T = 1, k = 1', 'T = 3, k = 3', 'T = 5, k = 5');
grid on;

% impulse

subplot(2, 1, 2);
hold on;

impulse(K4_1)
impulse(K4_2)
impulse(K4_3)

title('Impulse Response K_3(s)')
legend('T = 1, k = 1', 'T = 3, k = 3', 'T = 5, k = 5');
grid on;

%% K_4
figure(4)

% sys(4)=tf([0 k],[T 1 0]);
up1 = [0 k1];
down1 = [T1 1 0];
up2 = [0 k2];
down2 = [T2 1 0];
up3 = [0 k3];
down3 = [T3 1 0];

K4_1 = tf(up1, down1);
K4_2 = tf(up2, down2);
K4_3 = tf(up3, down3);

% step

subplot(2, 1, 1);
hold on;

stepplot(K4_1)
stepplot(K4_2)
stepplot(K4_3)

title('Step Response K_4(s)')
legend('T = 1, k = 1', 'T = 3, k = 3', 'T = 5, k = 5');
grid on;

% impulse

subplot(2, 1, 2);
hold on;

impulse(K4_1)
impulse(K4_2)
impulse(K4_3)

title('Impulse Response K_4(s)')
legend('T = 1, k = 1', 'T = 3, k = 3', 'T = 5, k = 5');
grid on;