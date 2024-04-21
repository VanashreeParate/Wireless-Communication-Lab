# Vanashree_HousieTicket
## Overview
The Housie Ticket Generator is a MATLAB program that creates randomized Housie (Bingo) tickets based on traditional rules. Housie is a popular game of chance where players mark off numbers on their tickets as they are called out. This generator ensures fair and randomized ticket creation, adhering to the specified rules for each column.

## Rules for generating ticket
1. 3x9 grid
   Each ticket is a 3x9 grid, forming a total of 27 spaces.
2. Column range
   Column 1: 1-10
   Column 2: 11-20
   Column 3: 21-30
   ...
   Column 9: 81-90
3. Unique Numbers in column (in ascending order) with no column empty
4. Five Numbers per row

## About program
* We create 3x9 binary matrix where each row contains five 1s and each column contains atleast one 1.
* Next create another 3x9 matrix using randperm command according to rule number 2 column range.
* Multiply the above two matrices.
* Sort the non-zero elements column-wise and replace all 0s with blank.

## Output

![image](https://github.com/VanashreeParate/Vanashree_HousieTicket/assets/122006743/22565eba-5239-42e1-b6e5-8986435963fe)
