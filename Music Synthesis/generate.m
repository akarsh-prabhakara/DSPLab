% Script to generate an approximation to a musical note as generated on a
% keyboard. The script accounts for harmonic frequencies and exponential 
% smoothing. Takes input as a number corresponding to the musical note and 
% duration T for which the output is intended  

% sa r1b r2 g1b g2 m1 m2b p d1b d2 n1b n2 sa1 
% 1   2   3  4  5  6   7  8  9  10  11  12  13

function y = generate(i, T)

% Parameters
omega = [0.1029,0.1088,0.1155,0.1221,0.1296,0.1371,0.1453,0.1539,0.1630,0.1728,0.1830,0.1940,0.2054];
alpha = 0.5;
b1 = 1e-4;
b2 = 1e-3;

n = 0:T-1;
x = sin(omega(i) * n) + alpha * sin(2*omega(i) * n) + (alpha^2) * sin(2*omega(i) * n);
w = exp(-1*b1 * n) .* (ones(1,T) - exp(-1*b2 * n));
y = w .* x;

end