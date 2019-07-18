function B = scaling(A, i, s)
[m,n] = size(A);
B = zeros(size(A));
if 1<=i && i<=m
    for p = 1:m
        for q = 1:n
            if p==i
                B(p,q) = A(i,q)*s;
            else
                B(p,q) = A(p,q);
            end
        end
    end
else
    disp("error");
    B = A;
end