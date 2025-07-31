=begin
Modify your solution so it prints the triangle upside down from 
its current orientation.

Modify your solution again so that you can display the triangle 
with the right angle at any corner of the grid.
=end

## Refactored solution:
def triangle(n, angle)
  star = '*'
  white_space = ' '

  current_star_number = n

  case angle
  when 'top_left'
    while current_star_number != 0
      puts "#{star * current_star_number}#{white_space * (n - current_star_number)}"
      current_star_number -= 1
    end
  when 'top_right'
    while current_star_number != 0
      puts "#{white_space * (n - current_star_number)}#{star * current_star_number}"
      current_star_number -= 1
    end
  when 'bottom_left'
    n.times do |star_number|
      current_star_number = star_number + 1
      puts "#{star * current_star_number}#{white_space * (n - current_star_number)}"
    end
  when 'bottom_right'
    n.times do |star_number|
      current_star_number = star_number + 1
      puts "#{white_space * (n - current_star_number)}#{star * current_star_number}"
    end
  end
end

triangle(5, 'top_left')
triangle(5, 'top_right')
triangle(5, 'bottom_left')
triangle(5, 'bottom_right')

=begin
*****
**** 
***  
**   
*    
*****
 ****
  ***
   **
    *
*    
**   
***  
**** 
*****
    *
   **
  ***
 ****
*****
=end


## Solution:
def triangle(n, angle)
  star = '*'
  white_space = ' '

  case angle
  when 'top_left'
    current_star_number = n
    while current_star_number != 0
      puts "#{star * current_star_number}#{white_space * (n - current_star_number)}"
      current_star_number -= 1
    end
  when 'top_right'
    current_star_number = n
    while current_star_number != 0
      puts "#{white_space * (n - current_star_number)}#{star * current_star_number}"
      current_star_number -= 1
    end
  when 'bottom_left'
    n.times do |star_number|
      current_star_number = star_number + 1
      puts "#{star * current_star_number}#{white_space * (n - current_star_number)}"
    end
  when 'bottom_right'
    n.times do |star_number|
      current_star_number = star_number + 1
      puts "#{white_space * (n - current_star_number)}#{star * current_star_number}"
    end
  end
end

triangle(5, 'top_left')
triangle(5, 'top_right')
triangle(5, 'bottom_left')
triangle(5, 'bottom_right')

=begin
*****
**** 
***  
**   
*    
*****
 ****
  ***
   **
    *
*    
**   
***  
**** 
*****
    *
   **
  ***
 ****
*****
=end



# Upside down left triangle:
def triangle(n)
  star = '*'
  white_space = ' '

  current_star_number = n
  while current_star_number != 0
    puts "#{star * current_star_number}#{white_space * (n - current_star_number)}"
    current_star_number -= 1
  end
end

triangle(5)
=begin
*****
**** 
***  
**   
*
=end

triangle(9)
=begin
*********
******** 
*******  
******   
*****    
****     
***      
**       
* 
=end


# Upside down right triangle:
def triangle(n)
  star = '*'
  white_space = ' '

  current_star_number = n
  while current_star_number != 0
    puts "#{white_space * (n - current_star_number)}#{star * current_star_number}"
    current_star_number -= 1
  end
end

triangle(5)
=begin
*****
 ****
  ***
   **
    *
=end

triangle(9)
=begin
*********
 ********
  *******
   ******
    *****
     ****
      ***
       **
        *
=end


# Left triangle:
def triangle(n)
  star = '*'
  white_space = ' '

  n.times do |star_number|
    current_star_number = star_number + 1
    puts "#{star * current_star_number}#{white_space * (n - current_star_number)}"
  end
end

triangle(5)
=begin
*    
**   
***  
**** 
*****
=end

triangle(9)
=begin
*        
**       
***      
****     
*****    
******   
*******  
******** 
*********
=end



# Right triangle:
def triangle(n)
  star = '*'
  white_space = ' '

  n.times do |star_number|
    current_star_number = star_number + 1
    puts "#{white_space * (n - current_star_number)}#{star * current_star_number}"
  end
end

triangle(5)
=begin
    *
   **
  ***
 ****
*****
=end

triangle(9)
=begin
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end
