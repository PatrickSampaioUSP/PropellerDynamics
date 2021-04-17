global alpha
global C
global K
global I
global n1
global n2
global tau1

alpha = 1;
n1 = -21/29;
n2 = 14/23;
C = [1943 970 798 1399 469 4570];
K = [2151 1074 884 12620 519 5060];
I = [3.08 8.83 5.03 3.74 4.46 9.72, 693.50];
tau1 = 30;
y_0 = [0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    
result = ode45(@dydt_func, [0,20], y_0);

plot_fig = figure();
    
figure(1)
subplot(1,1,1)
plot(result.x, alpha * result.y(7,:));
title('Propeller Angular Velocity')
xlabel('Time (s)')
ylabel('Angular Velocity (w)')
grid minor
