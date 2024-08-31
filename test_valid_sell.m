% test uses of valid_sell() function
amount = 15;
stock_owned = 30;

is_valid = valid_sell(amount, stock_owned);
fprintf ("Expected output: 1\n");
fprintf ("Actual output: %d\n", is_valid);

amount = 31;
stock_owned = 30;

is_valid = valid_sell(amount, stock_owned);
fprintf ("Expected output: 0\n");
fprintf ("Actual output: %d\n", is_valid);

amount = -5;
stock_owned = 30;

is_valid = valid_sell(amount, stock_owned);
fprintf ("Expected output: 0\n");
fprintf ("Actual output: %d\n", is_valid);

amount = "abc";
stock_owned = 30;

is_valid = valid_sell(amount, stock_owned);
fprintf ("Expected output: 0\n");
fprintf ("Actual output: %d\n", is_valid);