% display welcome message and rule of game
fprintf ("Welcome to stock trading game! The rule is really simple: you are given prediction on if the stock prices will go \n");
fprintf ("up or down, your mission is to decide to buy or sell stocks\n");
pause (0.5);
fprintf ("You are given $10,000\n");
pause (0.5);
fprintf ("Let's see how much money can you make after a week!\n");
pause (0.5);

% initial money
money = 10000;
% display initial money 
fprintf ("Your money: $%d\n", money);
pause (0.5);

% initial stock price 
stock_value = 100;
fprintf ("The stock price now is: $%d\n", stock_value);
% initial stock owned
stock_owned = 0;
fprintf ("The amount of stock you own now is: %d\n", stock_owned);

% create rate change of stocks, prediction accuracy, actual accuracy, change upward or downward
rate_change = randi([1, 8]);
predicted = randi([20, 80]);
actual = randi([1, 100]);
increase_or_decrease = randi([1, 2]);

% check if stock value will go up or down
if increase_or_decrease == 1
    % display the prediction
    fprintf ("Stock is predicted to increase by %d%% (accuracy: %d%%)\n", rate_change, predicted);
    % ask users if they want to buy
    fprintf ("Do you want to buy:? yes/no ");
    buy = input ("", "s");

    % check if the request is valid
    while ~ (buy == "yes" || buy == "no") 
        % ask user to re-type until the input is valid
        buy = input ("Please enter a valid request! yes/no ", "s");
    end

    if buy == "yes"
        % ask users for the amount of stock they want to buy
        amount = input ("Enter the amount of stock that you want to buy: ");

        % check if the amount input is valid
        while ~ (isnumeric(amount) && amount <= money/stock_value && amount >= 0)
            % ask users to re-type until the input is valid
            amount = input ("You do not have enough money to buy or the number is invalid. Please try other number: ");
        end

        % reduce money after users buy stock
        money = money - amount * stock_value;
        % increase amount of stock after users buy
        stock_owned = stock_owned + amount;
        % display the money left after buying
        fprintf ("You have $%.2f money left\n", money);
        pause (0.5);
        % display the amount of stock users have
        fprintf ("You now own %d stocks\n", stock_owned);
        pause (0.5);
    end

% check if the stock price goes down
else
    % display the prediction
    fprintf ("Stock is predicted to decrease by %d%% (accuracy: %d%%)\n", rate_change, predicted);
    % ask users if they want to buy 
    fprintf ("Do you want to buy:? yes/no ");
    buy = input ("", "s");

    % check if the request is valid
    while ~ (buy == "yes" || buy == "no") 
        % ask users to re-type until the input is valid
        buy = input ("Please enter a valid request! yes/no ", "s");
    end

    if buy == "yes"
        % ask users for the amount of stock they want to buy
        amount = input ("Enter the amount of stock that you want to buy: ");

        % check if the amount input is valid
        while ~ (isnumeric(amount) && amount <= money/stock_value && amount >= 0)
            % ask users to re-type until the input is valid
            amount = input ("You do not have enough money to buy or the number is invalid. Please try other number: ");
        end

        % reduce money after users buy stock
        money = money - amount * stock_value;
        % increase amount of stock after users buy
        stock_owned = stock_owned + amount;
        % display the money left after buying
        fprintf ("You have $%.2f money left\n", money);
        pause (0.5);
        % display the amount of stock users have
        fprintf ("You now own %d stocks\n", stock_owned);
        pause (0.5);
    end
end

% update result of stock value
if actual <= predicted
    if increase_or_decrease == 1
        % update stock price
        stock_value = stock_value * (100 + rate_change) / 100;
    else
        % update stock price
        stock_value = stock_value * (100 - rate_change) / 100;
    end
else
    if increase_or_decrease == 1
        % update stock price
        stock_value = stock_value * (100 - rate_change) / 100;
    else
        % update stock price
        stock_value = stock_value * (100 + rate_change) / 100;
    end
end

% display the stock price after a day
fprintf ("After a day, stock price now is $%.2f\n", stock_value);
pause (0.5);
% display money left
fprintf ("Your money left: %.2f\n", money);
pause (0.5);
% display stock owned
fprintf ("Stock owned: %d\n", stock_owned);
pause (0.5);

% reset rate change of stocks, prediction accuracy, actual accuracy, change upward or downward
rate_change = randi([1, 8]);
predicted = randi([20, 80]);
actual = randi([1, 100]);
increase_or_decrease = randi([1, 2]);

% check if stock value will go up or down
if increase_or_decrease == 1
    % display the prediction
    fprintf ("Stock is predicted to increase by %d%% (accuracy: %d%%)\n", rate_change, predicted);
    % ask users if they want to buy
    fprintf ("Do you want to buy:? yes/no ");
    buy = input ("", "s");

    % check if the request is valid
    while ~ (buy == "yes" || buy == "no") 
        % ask user to re-type until the input is valid
        buy = input ("Please enter a valid request! yes/no ", "s");
    end

    if buy == "yes"
        % ask users for the amount of stock they want to buy
        amount = input ("Enter the amount of stock that you want to buy: ");

        % check if the amount input is valid
        while ~ (isnumeric(amount) && amount <= money/stock_value && amount >= 0)
            % ask users to re-type until the input is valid
            amount = input ("You do not have enough money to buy or the number is invalid. Please try other number: ");
        end

        % reduce money after users buy stock
        money = money - amount * stock_value;
        % increase amount of stock after users buy
        stock_owned = stock_owned + amount;
        % display the money left after buying
        fprintf ("You have $%.2f money left\n", money);
        pause (0.5);
        % display the amount of stock users have
        fprintf ("You now own %d stocks\n", stock_owned);
        pause (0.5);
    end

    % ask users if they want to sell or not
    fprintf ("Do you want to sell? yes/no ");
    sell = input ("", "s");

    % check if the request is valid
    while ~ (sell == "yes" || sell == "no")
        % ask user to re-type until the input is valid
        buy = input ("Please enter a valid request! yes/no ", "s");
    end

    if sell == "yes"
        % ask users for the amount of stock they want to sell
        amount = input ("Enter the amount of stock that you want to sell: ");

        % check if the amount input is valid
        while ~ (isnumeric(amount) && amount <= stock_owned && amount >= 0)
            amount = input ("You do not have enough stock to sell or the number is invalid. Please try other number: ");
        end

        % increase money after users sell stock
        money = money + amount * stock_value;
        % decrease amount of stock after users sell
        stock_owned = stock_owned - amount;
        % display the money left after selling
        fprintf ("You have $%.2f money left\n", money);
        % display the amount of stock users have
        fprintf ("You now own %d stocks\n", stock_owned);
    end

% check if the stock price goes down
else
    % display the prediction
    fprintf ("Stock is predicted to decrease by %d%% (accuracy: %d%%)\n", rate_change, predicted);
    % ask users if they want to buy 
    fprintf ("Do you want to buy:? yes/no ");
    buy = input ("", "s");

    % check if the request is valid
    while ~ (buy == "yes" || buy == "no") 
        % ask users to re-type until the input is valid
        buy = input ("Please enter a valid request! yes/no ", "s");
    end

    if buy == "yes"
        % ask users for the amount of stock they want to buy
        amount = input ("Enter the amount of stock that you want to buy: ");

        % check if the amount input is valid
        while ~ (isnumeric(amount) && amount <= money/stock_value && amount >= 0)
            % ask users to re-type until the input is valid
            amount = input ("You do not have enough money to buy or the number is invalid. Please try other number: ");
        end

        % reduce money after users buy stock
        money = money - amount * stock_value;
        % increase amount of stock after users buy
        stock_owned = stock_owned + amount;
        % display the money left after buying
        fprintf ("You have $%.2f money left\n", money);
        pause (0.5);
        % display the amount of stock users have
        fprintf ("You now own %d stocks\n", stock_owned);
        pause (0.5);
    end

    % ask users if they want to sell or not
    fprintf ("Do you want to sell? yes/no ");
    sell = input ("", "s");

    % check if the request is valid
    while ~ (sell == "yes" || sell == "no")
        % ask user to re-type until the input is valid
        buy = input ("Please enter a valid request! yes/no ", "s");
    end

    if sell == "yes"
        % ask users for the amount of stock they want to sell
        amount = input ("Enter the amount of stock that you want to sell: ");

        % check if the amount input is valid
        while ~ (isnumeric(amount) && amount <= stock_owned && amount >= 0)
            amount = input ("You do not have enough stock to sell or the number is invalid. Please try other number: ");
        end

        % increase money after users sell stock
        money = money + amount * stock_value;
        % decrease amount of stock after users sell
        stock_owned = stock_owned - amount;
        % display the money left after selling
        fprintf ("You have $%.2f money left\n", money);
        % display the amount of stock users have
        fprintf ("You now own %d stocks\n", stock_owned);
    end
end

% update result of stock value
if actual <= predicted
    if increase_or_decrease == 1
        % update stock price
        stock_value = stock_value * (100 + rate_change) / 100;
    else
        % update stock price
        stock_value = stock_value * (100 - rate_change) / 100;
    end
else
    if increase_or_decrease == 1
        % update stock price
        stock_value = stock_value * (100 - rate_change) / 100;
    else
        % update stock price
        stock_value = stock_value * (100 + rate_change) / 100;
    end
end

% display the stock price after a day
fprintf ("After a day, stock price now is $%.2f\n", stock_value);
pause (0.5);
% update total money (including stocks)
total_money = money + stock_owned * stock_value;
% display the total money (including stocks)
fprintf ("Your total money (including stocks) now is $%.2f", total_money);