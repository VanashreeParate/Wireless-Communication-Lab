clc;
clear all;
close all;

%binary matrix
cc = zeros(3,9);
check = all(sum(cc));
while(check == 0)
    fl = 1;
    while(fl==1)
        aa = round(rand(1,9));
        if(sum(aa)==5)
            fl=0;
        end
    end
    cc(1,:)=aa;
        fl = 1;
    while(fl==1)
        aa = round(rand(1,9));
        if(sum(aa)==5)
            fl=0;
        end
    end
    cc(2,:)=aa;
    fl = 1;
    while(fl==1)
        aa = round(rand(1,9));
        if(sum(aa)==5)
            fl=0;
        end
    end
    cc(3,:)=aa;

    check = all(sum(cc));
end

%random no.s matrix
housieTicket = zeros(3,9);
for col = 1:9 
    lowerBound = (col-1)*10+1;
    upperBound = col*10;
    colNumbers = randperm(upperBound - lowerBound+1, 3) + lowerBound-1; 
    %randperm(n,k); n=range 1 to n; 3=distinct nos from 1 to n
    housieTicket(:,col) = colNumbers;
end

%elemental multiplication
housieTicket = housieTicket .* cc;

%sort
for col = 1:9
    inputArray = housieTicket(:,col);
    % Exclude zeros from the array
    nonZeroElements = inputArray(inputArray ~= 0);
    sortedNonZeroElements = sort(nonZeroElements);   
    % Initialize the result array with zeros
    sortedArray = zeros(size(inputArray));    
    % Assign sorted non-zero elements to the corresponding positions
    sortedArray(inputArray ~= 0) = sortedNonZeroElements;
    housieTicket(:,col) = sortedArray;
end
%disp(housieTicket);

%replace 0 -> " "
for row = 1:3
    inputString = housieTicket(row,:);
    charArray = num2str(inputString);
    numberToReplace = 0;
    % Convert the number to replace to a string
    strToReplace = num2str(numberToReplace);
    % Replace the number with blank in the character array
    replacedCharArray = strrep(charArray, strToReplace, " ");
    replacedString = string(replacedCharArray);
    new(row,:) = replacedString;
end
%disp(new);

%string to matrix
housieTicket = char(new);
%new = char(new);
disp('Housie Ticket');
disp(housieTicket);