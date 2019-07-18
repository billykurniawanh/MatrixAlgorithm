function x = least_squares(A,b)
%Input : an m×n matrix A and a vector b element Rm
%Output: a vector x element Rn which is the least-squares solution of the over-determined system Ax = b, i.e. such that Ax - b element peperndicular of Col A 
[Q, R] = my_qr(A);
x = back_sub(R,Q'*b);
