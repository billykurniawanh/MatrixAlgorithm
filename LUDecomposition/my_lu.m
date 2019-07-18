function[L, U] = my_lu(A)
[m,n] = size(A);
Ltemp = eye(n);
Utemp = A;
for i=1:n-1
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


