function x = solve(A, b)
%Supplementary program to call my_rref in one script
augmented_matrix = [A b];
R = my_rref(augmented_matrix);
x = R(:, end);