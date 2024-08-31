% function to display stock owned after users buy/sell
function [] = display_stock_owned(A)
    fprintf ("Stock 1 owned: %d\n", A(1));
    pause (0.5);
    fprintf ("Stock 2 owned: %d\n", A(2));
    pause (0.5);
    fprintf ("Stock 3 owned: %d\n", A(3));
    pause (0.5);
    fprintf ("Stock 4 owned: %d\n", A(4));
    pause (0.5);
    fprintf ("Stock 5 owned: %d\n", A(5));
    pause (0.5);
end