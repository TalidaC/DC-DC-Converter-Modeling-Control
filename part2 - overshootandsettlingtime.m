Uin = 48;
Uout = 18;
Iout_max = 10;
delta_Uc = 0.8;
fs = 1000;
u = Uout / Uin;


R = Uout / Iout_max;

delta_iL = 0.4 * Iout_max;

L = ((Uin - Uout) * u) / (delta_iL * fs);

C = delta_iL / (fs * delta_Uc * 8);

%datasheet values

C1 = 6.8e-4;
fprintf('Capacitor C1: %.14f F\n', C1 * 1e-6);


L1 = 3e-3;
fprintf('Inductor L1: %.5f H\n', L1);

fprintf('Load Resistance R: %.2f Ohms\n', R);
fprintf('Inductor L: %.5f H\n', L);
fprintf('Capacitor C: %.15f F\n', C * 1e-6)