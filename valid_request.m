% function to check if users input valid request (yes/no)
function [valid] = valid_request(request)
    if request == "yes" || request == "no"
        valid = 1;
    else
        valid = 0;
    end
end