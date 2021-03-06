function [dydt] = dydt_func(t,y)
    global alpha
    global C
    global K
    global I
    global n1
    global n2
    global tau1
    
    A = [-C(1)  0     0        0     0     0; 
          C(1) -C(2)  0        0     0     0; 
          0     C(2) -C(3)*n1  0     0     0;
          0     0     C(3)   -C(4)   0     0;
          0     0     0       C(4)  -C(5)  0;
          0     0     0        0     C(5) -C(6)*n2;
          0     0     0        0     0     C(6);];
    
    A_2 = [-K(1)  0     0        0     0     0; 
            K(1) -K(2)  0        0     0     0; 
            0     K(2) -K(3)     0     0     0;
            0     0     K(3)   -K(4)   0     0;
            0     0     0       K(4)  -K(5)  0;
            0     0     0        0     K(5) -K(6);
            0     0     0        0     0     K(6);];
      
    x = [y(1)  -  y(2);
         y(2)  -  y(3);
       n1*y(3) -  y(4);
         y(4)  -  y(5);
         y(5)  -  y(6);
       n2*y(6) -  y(7);];
   
    x_2 = [y(8) - y(9);
           y(9) - y(10);
        n1*y(10) - y(11);
           y(11) - y(12);
           y(12) - y(13);
        n2*y(13) - y(14);];
   
    u = [tau1; 0; 0; 0; 0; 0; alpha * y(7);];
         
    dydt = (A * x + A_2 * x_2 + u) ./ I';
    dydt(8:14) = [y(1); y(2); y(3); y(4); y(5); y(6); y(7);];
end

