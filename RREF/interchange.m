function B = interchange(A, i, j)
[m,n] = size(A);
B = zeros(size(A));
if 1<=i && i<=m && 1<=j && j<=m
    for p = 1:m
        for q = 1:n
            if p == i
                B(p,q) = A(j,q);
            elseif p==j
                B(p,q) = A(i,q);
            else
                B(p,q) = A(p,q);
            end
        end
    end
else
    disp("error");
    B = A;
end