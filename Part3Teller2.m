clear all
clc

Customer3 = [1:20];
Teller = [1  1 2 2 1 2 1 2 1 1 2 1 1 2 1 2 1 2 1 1];
TimeArriv3 = [3.2 4.5 4.6 6 10 10.9 11.2 13.2 14 14.8 15 17.7 19.8 20 21.5 23 24 26.3 31 31.5 ];
SST3 = [3.2  4.5 4.6 7.7 8.7 10.8 12.1 13.3 17.2 17.2 17.6 19.9 22 24.6 26.1 27.1 29.4 30.5 30.9 32.4];
DEPT3 = [4.2 8.7 7.7 10.8 12.1 13.3 17.2 17.6 17.2 19.9 24.6 22 26.1 27.1 29.4 30.5 30.9 32.5 32.4 37.4];
TimeQ3 = [0 0 0 1.7 0 0 0.9 0.1 3.2 2.4 2.6 2.2 2.2 4.6 5 4.1 5.4 4.2 0 0.9];
TimeBank3 = [1 4.2 3.1 4.8 2.1 2.4 6 4.4 3.2 5.1 9.6 4.3 6.3 7.1 7.9 7.5 6.9 6.2 1.4 5.9];

disp('                    Part 2 - 2-Teller'),
disp(' Customer #   Teller # Arrival T  SS T     Dep. T  Time in Q')
disp([Customer3', Teller', TimeArriv3', SST3', DEPT3', TimeQ3'])

disp('                    Part 2 - Averages'),
disp('Avg Time in Q')
disp([mean(TimeQ3)])
disp('Avg Time in Bank')
disp([mean(TimeBank3)])
