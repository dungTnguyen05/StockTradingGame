% test uses of valid_buy() function
money = 100;
amount = 6;
stock_value = 15;

is_valid = valid_buy(money, amount, stock_value);
fprintf ("Expected output: 1\n");
fprintf ("Actual output: %d\n", is_valid);

money = 100;
amount = 7;
stock_value = 15;

is_valid = valid_buy(money, amount, stock_value);
fprintf ("Expected output: 0\n");
fprintf ("Actual output: %d\n", is_valid);

money = 197;
amount = -1;
stock_value = 1000;

is_valid = valid_buy(money, amount, stock_value);
fprintf ("Expected output: 0\n");
fprintf ("Actual output: %d\n", is_valid);

money = 197;
amount = "xyz";
stock_value = 1000;

is_valid = valid_buy(money, amount, stock_value);
fprintf ("Expected output: 0\n");
fprintf ("Actual output: %d\n", is_valid);