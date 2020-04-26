clear all
clc

%FOr part 2 we are tasked firstly with creating our own arrival times, and
%time being served, double the number of people, and keeping the Time
%Served as random as possible I generate:
%Obviously we opt to keep the Time served to the same average (3.23), roughly speaking (3.25), but we'll
%change up the numbers, we don't want to skew the results by
%having every person from the part B taking 2 hours on average because each
%is looking to apply for a mortgage, and so on. 
%Please click run to view the table

%First and foremost is inputing the numbers I have for Time Arrival and
 %Time Service.


TimeArriv2 = [3.2 4.5 4.6 6 10 10.9 11.2 13.2 14 14.8 15 17.7 19.8 20 21.5 23 24 26.3 31 31.5 32.1 36.6 40.0 41.0 41.3 45];
TimeServ2 = [1 4.2  3.1 3.1 2.1 2.4 5.1 4.3 4 2.7 7 2.1  4.1 2.5 3.2 3.4 1.5 2.0 1.4 5.0 2.8 5 3.0 2.2 2.5 5];
customer2 = [1:26];

A = abs(diff(TimeArriv2));
L = mean(A);

B = mean(TimeServ2);

disp(' Part 2 - Creating Randomized Arrival Times and Time Served '),
disp(' Customer#  Arrival-T   Time Served')
disp([customer2', TimeArriv2', TimeServ2'])

disp('Mean value of time between customer arrival Time')
disp(L)

disp('Mean value of customer service Time')
disp(B)