% function to display stock values after being changed
function [] = display_stock_value_changed(stock_value_vector, date)
    fprintf ("The value of stock 1: $%.2f\n", stock_value_vector(date, 1));
    pause (0.5);
    fprintf ("The value of stock 2: $%.2f\n", stock_value_vector(date, 2));
    pause (0.5);
    fprintf ("The value of stock 3: $%.2f\n", stock_value_vector(date, 3));
    pause (0.5);
    fprintf ("The value of stock 4: $%.2f\n", stock_value_vector(date, 4));
    pause (0.5);
    fprintf ("The value of stock 5: $%.2f\n", stock_value_vector(date, 5));
    pause (0.5);
end