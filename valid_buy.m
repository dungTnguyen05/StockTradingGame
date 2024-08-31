% function to check if users input valid amount of stock to buy
function [valid] = valid_buy(money_left, amount_stock, value_stock)
    if isnumeric(amount_stock) && money_left >= amount_stock * value_stock && amount_stock >= 0
        valid = 1;
    else
        valid = 0;
    end
end