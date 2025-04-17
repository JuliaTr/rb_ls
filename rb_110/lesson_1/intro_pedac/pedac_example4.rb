=begin

PROBLEM

Sum Even Number Rows

Imagine a sequence of consecutive even integers beginning with two. The 
integers are grouped in rows, with the first row containing one integer, the 
second row two integers, the third row three integers, and so on. Given the 
integer representing the number of a particular row, return an integer representing 
the sum of all the integers in the row.

____________________________________________________________________________

PEDAC

Problem:
  - Input: Integer representing the number of a particular row.
  - Output: Return an integer representing the sum of all the integers in the row.

  - Explicit: 
    - Sequence of integers.
    - Sequence begins with 2.
    - Integers are consecutive.
    - Integers are even.
    - Sequence is grouped into rows.
    - Each row is incrementally larger than the last: 1, 2, 3, ...
  
  - Implicit:
    - Row 1 has 1 element, row 2 has 2 elements ...

  - Sequence:
    - 2 --> 2
    - 4, 6 --> 10
    - 8, 10, 12
    - 14, 16, 18, 20 --> 68

Examples and Test Cases:
  Row number: 1 -> Sum of integers in row: 2
  Row number: 2 -> Sum of integers in row: 10
  Row number: 4 -> Sum of integers in row: 68  

Data Structures:
  - Sequence of rows
  - Order of rows is important
  - Rows contain integers
  - Order of integers is important

  [
    [2],
    [4, 6],
    [8, 10, 12],
    [14, 16, 18, 20],
    ...
  ]

Algorithms:
  - 1. Create an empty 'rows' array to hold all of our rows.
  - 2. Create a `row` array and add it to the overall `rows` array.
  - 3. Repeat step 2 until all the necessary rows have been created.
  - 4. Sum the final row.
  - 5. Return the sum.

  - (Step 2. of Algorithms) Problem: Create a row

  - Rules:
    - Row is an array.
    - Array contains integers.
    - Integers are consecutive even numbers.
    - Integers in each row forms part of a larger overall sequence.
    - Rows are of different lengths.

    - Input:
      - Length of the row
      - The starting integer
    - Output: The row itself --> [8, 10, 12]

  - Example:
    - start: 2, length: 1 --> [2]
    - start: 4, length: 2 --> [4, 6]
    - start: 8, length: 3 --> [8, 10, 12]

  - Data Structure: array

  - Algorithm: 
    - 1. Create an empty `raw` array to contain the integers
    - 2. Add the starting integer
    - 3. Increment the starting integer by 2 to get the next integer in the sequence
    - 4. Repeat steps 2 and 3 until the array has reached the correct length
    - 5. Return the `row` array
=end
