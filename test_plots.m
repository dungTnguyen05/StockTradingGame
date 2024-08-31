% test uses of plots
x = [1, 2, 3, 4, 5];
y = [2, 4, 6, 8, 10];
z = [1, 4, 9, 16, 25];
t = [2, 4, 8, 16, 32];

% display plots on the same window
hold on;
plot (x, y);
plot (x, z);
plot (x, t);

% add legends to plots
legend ("y = 2x", "y = x^2", "y = 2^x");
% add title to plots
title ("y = 2x, y = x^2 and y = 2^x");
% add axis to plots
xlabel ("x");
ylabel ("y");