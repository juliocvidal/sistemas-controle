function y = funcaoMotorCCTensaoVelocidadeAngular(V)
f = 5*10^(-6);
R = 3.4;
K = 0.15;
L = 15*10^(-3);
J = 0.7*10^(-3);

A = [0 1 0; 0 -f/J K/J; 0 -K/L -R/L];
B = [0; 0; 1/L];
C = [0 1 0];
D = 0;

sys = ss(A, B, C, D)
step(sys, V);
