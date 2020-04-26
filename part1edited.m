clear all
clc

%Please click run to view the table

%First and foremost is inputing the numbers I have for Time Arrival and
 %Time Service.

TimeArriv = [3.2 10.9 13.2 14.8 17.7 19.8 21.5 26.3 32.1 36.6 40.0 41.0 41.3];
TimeServ = [3.8 3.5 4.2 3.1 2.4 4.3 2.7 2.1 2.5 3.4 2.0 5.0 3.0];

%%Now basically initializing my variable names and making them all from
%%1->13
customer = [1:13]; %Customer#
TimeStart = [1:13]; %Start Time #1
TimeD = [1:13]; %Time Departure
TimeQ = [1:13]; %Time spent in Que
TimeB = [1:13]; %Time spent in Bank

%This loop computes each service time. The calculations for each table
%spoken about in the lab are in the bottom line before the displays
for i=1:13
    customer(i)=i;
    if i == 1
        TimeStart(i) = 3.2; %%Initial Condition for Customer #1
        TimeD(i) = TimeStart(i) + TimeServ(i);
        TimeQ(i) = TimeStart(i) - TimeArriv(i);
        TimeB(i) = TimeD(i) - TimeArriv(i);
    else
        if TimeArriv(i) > TimeD(i-1)
            TimeStart(i) = TimeArriv(i);
        else
            TimeStart(i) = TimeD(i-1);
        end
       
        %here they are
        
        TimeD(i) = TimeStart(i) + TimeServ(i);
        TimeQ(i) = TimeStart(i) - TimeArriv(i);
        TimeB(i) = TimeD(i) - TimeArriv(i);
    end
end

K = abs(diff(TimeArriv));
G = mean(K);

%Displaying the results

disp('                    Part 1 - 1-Teller'),
disp(' Customer #   Arrival T  SS T     Dep. T  Time in Q  Time in Bank')
disp([customer', TimeArriv', TimeStart', TimeD', TimeQ', TimeB'])

disp('                    Part 1 - Averages'),
disp('Mean Value of Time between Customer Arrival')
disp(G)
disp('Mean value of Service Time')
disp(mean(TimeServ))
disp('Avg Time in Q  Avg Time in Bank')
disp([mean(TimeQ)])
disp('Avg Time in Bank')
disp([mean(TimeB)])

