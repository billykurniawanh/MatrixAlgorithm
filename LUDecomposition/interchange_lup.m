function [U_new, L_new, P_new] = interchange_lup(U, i, j, L, P)
[m,n] = size(U);
U_new = zeros(size(U));
L_new = zeros(size(U));
P_new = zeros(size(U));
if 1<=i && i<=m && 1<=j && j<=m
    for p = 1:m
        for q = 1:n
            if p == i
                U_new(p,q) = U(j,q);
                if q<p
                    L_new(p,q) = L(j,q);
                else
                    L_new(p,q) = L(p,q);
                end
                P_new(p,q) = P(j,q);
            elseif p==j
                U_new(p,q) = U(i,q);
                if q<p
                    L_new(p,q) = L(i,q);
                else
                    L_new(p,q) = L(p,q);
                end
                P_new(p,q) = P(i,q);
            else
                U_new(p,q) = U(p,q);
                L_new(p,q) = L(p,q);
                P_new(p,q) = P(p,q);
            end
        end
    end
else
    disp("error");
    B = A;
end