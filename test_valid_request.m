% test uses of valid_request() function
request = "yes";
is_valid = valid_request(request);

fprintf ("Expected output: 1\n");
fprintf ("Actual output: %d\n", is_valid);
% => as expected

request = "no";
is_valid = valid_request(request);

fprintf ("Expected output: 1\n");
fprintf ("Actual output: %d\n", is_valid);
% => as expected

request = "hi";
is_valid = valid_request(request);

fprintf ("Expected output: 0\n");
fprintf ("Actual output: %d\n", is_valid);
% => as expected

request = "i dont know";
is_valid = valid_request(request);

fprintf ("Expected output: 0\n");
fprintf ("Actual output: %d\n", is_valid);
% => as expected

request = "1";
is_valid = valid_request(request);

fprintf ("Expected output: 0\n");
fprintf ("Actual output: %d\n", is_valid);
% => as expected