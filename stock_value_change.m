% function to determine how the stock values changed
function [new_stock_value] = stock_value_change(stock_value_vector, date, percent_change, predicted_accuracy, up_or_down)
    % create actual accuracy vector to compare with predicted accuracy
    actual_accuracy = randi([1, 100], 1, 5);
    % initialize new stock value vector
    new_stock_value = [];

    for i = 1 : 5
        % if actual accuracy <= predicted accuracy => prediction is true => the stock price will go exactly as predicted. If not, the price will go down when prediction is go up, and vice versa
        if actual_accuracy(i) <= predicted_accuracy(i)
            if up_or_down(i) == 1
                % update stock prices
                new_stock_value(i) = stock_value_vector(date, i) * (100 + percent_change(i)) / 100;
            else
                % update stock prices
                new_stock_value(i) = stock_value_vector(date, i) * (100 - percent_change(i)) / 100;
            end
        else
            if up_or_down(i) == 1
                % update stock prices
                new_stock_value(i) = stock_value_vector(date, i) * (100 - percent_change(i)) / 100;
            else
                % update stock prices
                new_stock_value(i) = stock_value_vector(date, i) * (100 + percent_change(i)) / 100;
            end
        end
    end
end