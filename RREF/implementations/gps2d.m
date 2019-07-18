function p = gps2d(a, b, c, ra, rb, rc)
%Input : The 2D coordinates of three points A, B, C, and their distances rA, rB, rC from an unknown point P
%Output: The 2D coordinates of the point P
A = [2*a(1)-2*b(1) 2*a(2)-2*b(2); 2*b(1)-2*c(1) 2*b(2)-2*c(2)];
b = [rb.^2-ra.^2+a(1).^2+a(2).^2-b(1).^2-b(2).^2; 
    rc.^2-rb.^2+b(1).^2+b(2).^2-c(1).^2-c(2).^2];
p = solve(A,b);
