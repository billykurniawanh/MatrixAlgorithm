function d = get_displacements(f, L, U, P)
%Input : a vector of forces f ? R8, and the LUP decomposition of A
%Output: the vector of vertex displacements d that result in these internal forces, i.e. the solution of Ad = f
g = P*f;
y = L\g;
d = U\y;
