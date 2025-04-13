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
=end
