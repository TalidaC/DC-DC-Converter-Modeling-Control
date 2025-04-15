clc; clear; close all;

Uin = 48;
Uout = 18;
L = 2.8125e-3;
C = 6.25e-4;
Iout_max = 10;
delta_Uc = 0.8;
fs = 1000;
miu = 0.375;
R = 1.8;
u = Uout / Uin;

%% din partea 2 a proiectului, valorile initiale
% ts= 7.83e-3;
% overshoot= 10.11/100;

%% alese de mine, cat de apropiate de valorile initiale
tss = 5e-3;
overshoots = 0.02;

A = [0 -1/L; 1/C -1/(R*C)];
B = [Uin/L; 0];
Cm = [0 1];
D = 0;

sys = ss(A,B,Cm,D);
Hf = tf(sys);


zeta = abs(log(overshoots))/sqrt(log(overshoots)^2 + pi^2);
w = 4/(zeta*tss);
Ho = tf(w^2, [1 2*w*zeta w^2]);
Hc = (1/Hf) * (Ho/(1-Ho));

Ho1 = tf(w^2, [1 2*w*zeta w^2]);
Hc1 = (1/Hf) * (Ho/(1-Ho));

Hc1= minreal(Hc1)
