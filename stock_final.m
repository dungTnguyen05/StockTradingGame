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
% display intitial money
fprintf ("Your money: $%d\n", money);
pause (0.5);

% initialize stock values for 8 days (NOTE: users actually play on 7 days, but the stock prices will also be updated to the 8th day) 
stock_value = zeros(8, 5);
% stock values for the first day
stock_value(1, 1 : end) = [100, 100, 100, 100, 100]; 

% initialize stock owned 
stock_owned = [0, 0, 0, 0, 0];
% display stock owned
display_stock_owned(stock_owned);

% initialize the day
day = 1;

% display current day (NOTE: split apart case day = 1 and others (because in day 1, you cannot sell stocks)) 
fprintf ("Day %d:\n", day);

% create rate change of stocks, prediction accuracy, change upward or downward
rate_change = randi([1, 8], 1, 5);
accuracy = randi([20, 80], 1, 5);
increase_or_decrease = randi([1, 2], 1, 5);

% display the price of stocks
for i = 1 : 5
    fprintf ("The stock %d value now is $%.2f\n", i, stock_value(day, i));
    pause (0.5);
end
 
for i = 1 : 5
    % check if the stock price goes up
    if increase_or_decrease(i) == 1
        % display the prediction
        fprintf ("Today, stock %d is predicted to increase by %d%% (accuracy: %d%%)\n", i, rate_change(i), accuracy(i));
        % ask users if they want to buy or not
        fprintf ("Do you want to buy? yes/no "); 
        buy = input ("", "s");

        % check if the request is valid
        while ~ valid_request(buy)
            % ask user to re-type until the input is valid
            buy = input ("Please enter a valid request! yes/no ", "s");
        end

        if buy == "yes"
            % ask users for the amount of stock they want to buy
            amount = input ("Enter the amount of stock that you want to buy: ");

            % check if the amount input is valid
            while ~ valid_buy(money, amount, stock_value(day, i))
                % ask users to re-type until the input is valid
                amount = input ("You do not have enough money to buy or the number is invalid. Please try other number: ");
            end

            % reduce money after users buy stock
            money = money - amount * stock_value(day, i);
            % increase amount of stock after users buy
            stock_owned(i) = stock_owned(i) + amount;
            % display the money left after buying
            fprintf ("You have $%.2f money left\n", money);
            % display the whole stocks owned by each kind
            display_stock_owned(stock_owned);
        end

    % check if the stock price goes down
    else
        % display the prediction
        fprintf ("Today, stock %d is predicted to decrease by %d%% (accuracy: %d%%)\n", i, rate_change(i), accuracy(i));
        % ask users if they want to buy or not
        fprintf ("Do you want to buy? yes/no ");
        buy = input ("", "s");

        % check if the request is valid
        while ~ valid_request(buy)
            % ask users to re-type until the input is valid
            buy = input ("Please enter a valid request! yes/no ", "s");
        end

        if buy == "yes"
            % ask users for the amount of stock they want to buy
            amount = input ("Enter the amount of stock that you want to buy: ");

            % check if the amount input is valid
            while ~ valid_buy(money, amount, stock_value(day, i))
                % ask users to re-type until the input is valid
                amount = input ("You do not have enough money to buy or the number is invalid. Please try other number: ");
            end

            % reduce money after users buy stock
            money = money - amount * stock_value(day, i);
            % increase amount of stock after users buy
            stock_owned(i) = stock_owned(i) + amount;
            % display the money left after buying
            fprintf ("You have $%.2f money left\n", money);
            % display the whole stocks owned by each kind
            display_stock_owned(stock_owned);
        end
    end
end

% result of stock prices after a day
stock_value(day + 1, 1 : end) = stock_value_change(stock_value, day, rate_change, accuracy, increase_or_decrease);

% display the money left, stock prices, amount of stocks owned after a day
fprintf ("After day %d:\n", day);
fprintf ("Your money left: $%.2f\n", money);
display_stock_value_changed(stock_value, day + 1);
display_stock_owned(stock_owned);

% increment of day value
day = day + 1;

% looping above process for day = 2 -> 7
while day <= 7
    % display current day
    fprintf ("Day %d:\n", day);

    % update the rate change of stocks, prediction accuracy, change upward or downward
    rate_change = randi([1, 8], 1, 5);
    accuracy = randi([20, 80], 1, 5);
    increase_or_decrease = randi([1, 2], 1, 5);

    % display the price of stocks
    for i = 1 : 5
        fprintf ("The stock %d value now is $%.2f\n", i, stock_value(day, i));
        pause (0.5);
    end
    
    for i = 1 : 5
        % check if the stock price goes up
        if increase_or_decrease(i) == 1
            % display the prediction
            fprintf ("Today, stock %d is predicted to increase by %d%% (accuracy: %d%%)\n", i, rate_change(i), accuracy(i));
            % ask users if they want to buy or not
            fprintf ("Do you want to buy? yes/no ");
            buy = input ("", "s");

            % check if the request is valid
            while ~ valid_request(buy)
                % ask users to re-type until the input is valid
                buy = input ("Please enter a valid request! yes/no ", "s");
            end

            if buy == "yes"
                % ask users for the amount of stock they want to buy
                amount = input ("Enter the amount of stock that you want to buy: ");

                % check if the amount input is valid
                while ~ valid_buy(money, amount, stock_value(day, i))
                    % ask users to re-type until the input is valid
                    amount = input ("You do not have enough money to buy or the number is invalid. Please try other number: ");
                end

                % reduce money after users buy stock
                money = money - amount * stock_value(day, i);
                % increase amount of stock after users buy
                stock_owned(i) = stock_owned(i) + amount;
                % display the money left after buying
                fprintf ("You have $%.2f money left\n", money);
                % display the whole stocks owned by each kind
                display_stock_owned(stock_owned);
            end

            % ask users if they want to sell or not
            fprintf ("Do you want to sell? yes/no ");
            sell = input ("", "s");

            % check if the request is valid
            while ~ valid_request(sell)
                % ask users to re-type until the input is valid
                sell = input ("Please enter a valid request! yes/no ", "s");
            end

            if sell == "yes"
                % ask users for the amount of stock they want to sell
                amount = input ("Enter the amount of stock that you want to sell: ");

                % check if the amount input is valid
                while ~ valid_sell(amount, stock_owned(i))
                    % ask users to re-type until the input is valid
                    amount = input ("You do not have enough stock to sell or the number is invalid. Please try other number: ");
                end

                % increase money after users sell stock
                money = money + amount * stock_value(day, i);
                % decrease amount of stock after users sell
                stock_owned(i) = stock_owned(i) - amount;
                % display the money left after selling
                fprintf ("You have $%.2f money left\n", money);
                % display the whole stocks owned by each kind
                display_stock_owned(stock_owned);
            end

        else
            % display the prediction
            fprintf ("Today, stock %d is predicted to decrease by %d%% (accuracy: %d%%)\n", i, rate_change(i), accuracy(i));
            % ask users if they want to buy or not
            fprintf ("Do you want to buy? yes/no ");
            buy = input ("", "s");

            % check if the request is valid
            while ~ valid_request(buy)
                % ask users to re-type until the input is valid
                buy = input ("Please enter a valid request! yes/no ", "s");
            end

            if buy == "yes"
                % ask users for the amount of stock they want to buy
                amount = input ("Enter the amount of stock that you want to buy: ");

                % check if the amount input is valid
                while ~ valid_buy(money, amount, stock_value(day, i))
                    % ask users to re-type until the input is valid
                    amount = input ("You do not have enough money to buy or the number is invalid. Please try other number: ");
                end

                % reduce money after users buy stock
                money = money - amount * stock_value(day, i);
                % increase amount of stock after users buy
                stock_owned(i) = stock_owned(i) + amount;
                % display the money left after buying
                fprintf ("You have $%.2f money left\n", money);
                % display the whole stocks owned by each kind
                display_stock_owned(stock_owned);
            end

            % ask users if they want to buy or not
            fprintf ("Do you want to sell? yes/no ");
            sell = input ("", "s");

            % check if the request is valid
            while ~ valid_request(sell)
                % ask users to re-type until the input is valid
                sell = input ("Please enter a valid request! yes/no ", "s");
            end

            if sell == "yes"
                % ask users for the amount of stock they want to sell
                amount = input ("Enter the amount of stock that you want to sell: ");

                % check if the amount input is valid
                while ~ valid_sell(amount, stock_owned(i))
                    % ask users to re-type until the input is valid
                    amount = input ("You do not have enough stock to sell or the number is invalid. Please try other number: ");
                end

                % reduce money after users sell stock
                money = money + amount * stock_value(day, i);
                % reduce amount of stock after users sell
                stock_owned(i) = stock_owned(i) - amount;
                % display the money left after selling
                fprintf ("You have $%.2f money left\n", money);
                % display the whole stocks owned by each kind
                display_stock_owned(stock_owned);
            end
        end
    end

    % result of stock prices after a day
    stock_value(day + 1, 1 : end) = stock_value_change(stock_value, day, rate_change, accuracy, increase_or_decrease);
    
    % display the money left, stock prices, amount of stocks owned after a day
    fprintf ("After day %d:\n", day);
    fprintf ("Your money left: $%.2f\n", money);
    display_stock_value_changed(stock_value, day + 1);
    display_stock_owned(stock_owned);
    
    % increment of day value
    day = day + 1;
end

% calculate the total money (including stocks) after a week
total_money = money + sum(stock_owned .* stock_value(8, 1 : end)); 
% display the total_money 
fprintf ("Your total money (including stocks) after a week is: $%.2f\n", total_money);

% check total money condition to display particular message
if total_money > 10000
    fprintf ("Good job! You win $%.2f!\n", total_money - 10000);
elseif total_money < 10000
    fprintf ("Try again! You lose $%.2f!\n", 10000 - total_money);
else
    fprintf ("Break even! You gain no money!\n");
end

% notify the stock chart will appear
fprintf ("This is the stock chart after a week:");

% display plots on the same window
hold on;
for i = 1 : 5
    % plot stock prices after the whole process
    plot ([1 : 8], stock_value(1 : end, i));
end

% add legends to plots
legend ("Stock 1", "Stock 2", "Stock 3", "Stock 4", "Stock 5");
% add title to plots
title ("Stock Chart");
% add axis labels to plots
xlabel ("Time (day)");
ylabel ("Price ($)");