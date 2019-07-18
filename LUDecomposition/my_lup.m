function [L, U, P] = my_lup(A)
[m,n] = size(A);
Ltemp = eye(n);
Ptemp = eye(n);
Utemp = A;
for i=1:n-1
    value = max(abs(Utemp(i:n,i)));
    for index = i:n
        if abs(Utemp(index,i)) == value
            j = index;
            break
        end
    end
    [Utemp,Ltemp,Ptemp] = interchange_lup(Utemp,i,j,Ltemp,Ptemp);
    if Utemp(i,i) < 10^-12
        break;
    end
    for k=i+1:n
        p = Utemp(k,i)/Utemp(i,i);
        [Utemp,Ltemp] = replacement_lu(Utemp,k,i,p,Ltemp);
    end
end
L = Ltemp;
U = Utemp;
P = Ptemp;

