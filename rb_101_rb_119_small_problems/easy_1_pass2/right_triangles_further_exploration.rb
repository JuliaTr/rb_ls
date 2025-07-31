=begin
Modify your solution so it prints the triangle upside down from 
its current orientation.

Modify your solution again so that you can display the triangle 
with the right angle at any corner of the grid.
=end


# Left triangles
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



# Right triangles:
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
