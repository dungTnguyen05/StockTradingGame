% test uses of display_stock_owned() function
stock_owned = [100, 200, 300, 200, 100];
display_stock_owned(stock_owned);
% => as expected
stock_owned = [100, 200, 300, 400, 500];
display_stock_owned(stock_owned);
% => as expected