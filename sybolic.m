c1 = sym('c1');
c2 = sym('c2');
c3 = sym('c3');
c4 = sym('c4');
c5 = sym('c5');
c6 = sym('c6');
c7 = sym('c7');

I1 = sym('I1');
I2 = sym('I2');
I3 = sym('I3');
I4 = sym('I4');
I5 = sym('I5');
I6 = sym('I6');
I7 = sym('I7');

k1 = sym('k1');
k2 = sym('k2');
k3 = sym('k3');
k4 = sym('k4');
k5 = sym('k5');
k6 = sym('k6');
k7 = sym('k7');

n1 = sym('n1');
n2 = sym('n2');

w1 = sym('omega1');
w2 = sym('omega2');
w3 = sym('omega3');
w4 = sym('omega4');
w5 = sym('omega5');
w6 = sym('omega6');
w7 = sym('omega7');

O1 = sym('theta1');
O2 = sym('theta2');
O3 = sym('theta3');
O4 = sym('theta4');
O5 = sym('theta5');
O6 = sym('theta6');
O7 = sym('theta7');

I = [I1; I2; I3; I4; I5; I6; I7;];

tau_1 = sym('tau1');
tau_2 = sym('tau2');

u =  [tau_1; 0; 0; 0; 0; 0; tau_2];

A = [-c1     0      0        0     0     0; 
      c1    -c2     0        0     0     0; 
       0  c2 - c3*n1 0        0     0     0;
       0     0      c3     -c4     0     0;
       0     0      0       c4    -c5    0;
       0     0      0        0     c5  -c6*n2;
       0     0      0        0     0     c6;];
   
A_2 = [-k1  0    0    0    0   0; 
        k1 -k2   0    0    0   0; 
        0   k2  -k3   0    0   0;
        0   0    k3  -k4   0   0;
        0   0    0    k4  -k5  0;
        0   0    0    0    k5 -k6;
        0   0    0    0    0   k6;]; 
    
x = [w1-w2;
     w2-w3;
  n1*w3-w4;
     w4-w5;
     w5-w6;
  n2*w6-w7;];
   
x_2 = [O1-O2;
       O2-O3;
    n1*O3-O4;
       O4-O5;
       O5-O6;
    n2*O6-O7;];

latex(A * x + A_2 * x_2 + u)

