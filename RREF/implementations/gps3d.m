function p = gps3d(a, b, c, d, ra, rb, rc, rd)
%Input : The 3D coordinates of four points A, B, C, D, and their distances rA, rB, rC, rD from an unknown point P
%Output: The 3D coordinates of the point P
A = [2*a(1)-2*b(1) 2*a(2)-2*b(2) 2*a(3)-2*b(3);
    2*b(1)-2*c(1) 2*b(2)-2*c(2) 2*b(3)-2*c(3);
    2*c(1)-2*d(1) 2*c(2)-2*d(2) 2*c(3)-2*d(3)];
b = [rb.^2-ra.^2+a(1).^2+a(2).^2+a(3).^2-b(1).^2-b(2).^2-b(3).^2; 
    rc.^2-rb.^2+b(1).^2+b(2).^2+b(3).^2-c(1).^2-c(2).^2-c(3).^2;
    rd.^2-rc.^2+c(1).^2+c(2).^2+c(3).^2-d(1).^2-d(2).^2-d(3).^2];
p = solve(A,b);
p(abs(p)<10^-12) = 0;
