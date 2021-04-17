global alpha
global C
global I
global n1
global n2
global tau1

alpha = 0.01;
n1 = -21/29;
n2 = 14/23;
C = [1943 970 798 1399 469 4570];
I = [3.08 8.83 5.03 3.74 4.46 9.72, 693.50];
tau1 = 15;
y_0 = [0 0 0 0 0 0 0];
    
result = ode45(@dydt_func, [0,5], y_0);

plot_fig = figure();
    
figure(1)
subplot(1,1,1)
plot(result.x, alpha * result.y(7,:));
title('Propeller Angular Velocity')
xlabel('Time (s)')
ylabel('Angular Velocity (w)')
grid minor
