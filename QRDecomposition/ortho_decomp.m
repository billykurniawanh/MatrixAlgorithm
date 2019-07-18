function [c, v_perp] = ortho_decomp(U, v)
c = U'*v;
v_perp = v-U*c;