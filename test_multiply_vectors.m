% test uses of multiply 2 1-D vectors (with the same sizes)
A = [1, 2, 3];
B = [2, 3, 4];

C = 1 * 2 + 2 * 3 + 3 * 4;
D = sum(A .* B);

fprintf ("Expected output: %d\n", C);
fprintf ("Actual output: %d\n", D);
% => as expected

E = 1 * 3 + 2 * 4;
F = sum(A(1 : 2) .* B(2 : 3));

fprintf ("Expected output: %d\n", E);
fprintf ("Actual output: %d\n", F);
% => as expected