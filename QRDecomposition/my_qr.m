function [Q, R] = my_qr(A)
[a,b] = size(A)
Q = [];
for i = 1:b
    if i == 1
        Q(:,i) = A(:,i)/norm(A(:,i));
    else
        [c,v_perp] = ortho_decomp(Q,A(:,i));
        Q(:,i) = v_perp/norm(v_perp);
    end
end
R = Q'*A;