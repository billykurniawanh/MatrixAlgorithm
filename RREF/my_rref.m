function R = my_rref(A)
[m,n] = size(A);
R = A;
pivot = 1;
shift = 1;
p=1;

while(p<=m)
    if pivot < n || (pivot==n && pivot>=p)
        while(abs(R(p,pivot))~=max(abs(R(p:m,pivot))))
            R = interchange(R,p,p+shift);
            if p+shift>m
                if pivot<n
                    pivot = pivot+1;
                else
                    break
                end
                shift = 1;
            else
                shift = shift+1;
            end
        end 
        if R(p,pivot) ~= 0 && abs(R(p,pivot)) > 10^-12
            shift = 1;
            R = scaling(R,p,1/R(p,pivot));
            for q = 1:m
                if q~=p && R(q,pivot)~=0
                    R = replacement(R,q,p,-R(q,pivot));
                end
            end
        else
            p = p-1;
        end
        pivot = pivot + 1;
    end
    p = p+1;
end