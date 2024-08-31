% test uses of display_stock_value_changed() function
A = [100, 100, 100, 100, 100; 110, 120, 130, 140, 150; 200, 400, 600, 800, 1000];
display_stock_value_changed(A, 1);
% => as expected
display_stock_value_changed(A, 2);
% => as expected
display_stock_value_changed(A, 3);
% => as expected