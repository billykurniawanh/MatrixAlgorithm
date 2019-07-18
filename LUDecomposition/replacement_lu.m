function [U_new, L_new] = replacement_lu(U, i, j, s, L)
[m,n] = size(U);
U_new = zeros(size(U));
L_new = zeros(size(U));
if 1<=i && i<=m && 1<=j && j<=m
    for p = 1:m
        for q = 1:n
            if p==i
                U_new(p,q) = U(i,q)-U(j,q)*s;
            else
                U_new(p,q) = U(p,q);
            end
            L_new(p,q) = L(p,q);
        end
    end
    L_new(i,j) = s;
else
    disp("error");
    U_new = U;
    L_new = L;
end
