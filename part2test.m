clear all
clc

%Please click run to view the table

%First and foremost is inputing the numbers I have for Time Arrival and
 %Time Service.

TimeArriv2 = [3.2 4.5 4.6 6 10 10.9 11.2 13.2 14 14.8 15 17.7 19.8 20 21.5 23 24 26.3 31 31.5 ];
TimeServ2 = [1 4.2  3.1 3.1 2.1 2.4 5.1 4.3 4 2.7 7 2.1  4.1 2.5 3.2 3.4 1.5 2.0 1.4 5.0];

%%Now basically initializing my variable names and making them all from
%%1->13
customer2 = [1:20]; %Customer#
TimeStart2 = [1:20]; %Start Time #1
TimeD2 = [1:20]; %Time Departure
TimeQ2 = [1:20]; %Time spent in Que
TimeB2 = [1:20]; %Time spent in Bank

%This loop computes each service time. The calculations for each table
%spoken about in the lab are in the bottom line before the displays
for i=1:20
    customer2(i)=i;
    if i == 1
        TimeStart2(i) = 3.2;
        TimeD2(i) = TimeStart2(i) + TimeServ2(i);
        TimeQ2(i) = TimeStart2(i) - TimeArriv2(i);
        TimeB2(i) = TimeD2(i) - TimeArriv2(i);
    else
        if TimeArriv2(i) > TimeD2(i-1)
            TimeStart2(i) = TimeArriv2(i);
        else
            TimeStart2(i) = TimeD2(i-1);
        end
       
        %here they are
        
        TimeD2(i) = TimeStart2(i) + TimeServ2(i);
        TimeQ2(i) = TimeStart2(i) - TimeArriv2(i);
        TimeB2(i) = TimeD2(i) - TimeArriv2(i);
    end
end

%Displaying the results

disp('                    Part 2 - 1-Teller'),
disp(' Customer #   Arrival T  SS T     Dep. T  Time in Q  Time in Bank')
disp([customer2', TimeArriv2', TimeStart2', TimeD2', TimeQ2', TimeB2'])

disp('                    Part 2 - Averages'),
disp('Avg Time in Q  Avg Time in Bank')
disp([mean(TimeQ2)])
disp('Avg Time in Bank')
disp([mean(TimeB2)])
