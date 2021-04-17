function [dydt] = dydt_func(t,y)
    global alpha
    global C
    global I
    global n1
    global n2
    global tau1
    
    A = [-C(1)  0     0     0     0     0; 
          C(1) -C(2)  0     0     0     0; 
          0     C(2) -C(3)  0     0     0;
          0     0     C(3) -C(4)  0     0;
          0     0     0     C(4) -C(5)  0;
          0     0     0     0     C(5) -C(6);
          0     0     0     0     0     C(6);];
      
    x = [y(1)  -  y(2);
         y(2)  -  y(3);
       n1*y(3) -  y(4);
         y(4)  -  y(5);
         y(5)  -  y(6);
       n2*y(6) -  y(7);];
    u = [tau1; 0; 0; 0; 0; 0; alpha * y(7);];
         
    dydt = (A * x + u) ./ I';
end

