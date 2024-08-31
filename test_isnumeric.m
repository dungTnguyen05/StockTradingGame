% test uses of isnumberic() build-in function
a = isnumeric(1);
fprintf ("Expected output: 1\n");
fprintf ("Actual output: %d\n", a);
% => as expected

b = isnumeric(-1);
fprintf ("Expected output: 1\n");
fprintf ("Actual output: %d\n", b);
% => as expected

c = isnumeric(0) && isnumeric(-0);
fprintf ("Expected output: 1\n");
fprintf ("Actual output: %d\n", c);
% => as expected

d = isnumeric("x");
fprintf ("Expected output: 0\n");
fprintf ("Actual output: %d\n", d);
% => as expected

e = isnumeric(197) && isnumeric("z");
fprintf ("Expected output: 0\n");
fprintf ("Actual output: %d\n", e);
% => as expected