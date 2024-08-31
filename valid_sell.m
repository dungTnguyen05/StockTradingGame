% function to check if users input valid amount of stock to sell
function [valid] = valid_sell (amount_stock, stock_owned_element)
    if isnumeric(amount_stock) && amount_stock <= stock_owned_element && amount_stock >= 0
        valid = 1;
    else
        valid = 0;
    end
end