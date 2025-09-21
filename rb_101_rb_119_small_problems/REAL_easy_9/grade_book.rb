=begin
Write a method that determines the mean (average) of the 
three scores passed to it, and returns the letter value 
associated with that grade.

Tested values are all between 0 and 100. There is no need to 
check for negative values or values greater than 100.
=end

def get_grade(grade1, grade2, grade3)
  grades = [grade1, grade2, grade3]
  score = grades.sum / grades.length

  case
  when score.between?(90, 100) then 'A'
  when score.between?(80, 90)  then 'B'
  when score.between?(70, 80)  then 'C'
  when score.between?(60, 70)  then 'D'
  when score.between?(0, 60)   then 'F'
  end
end

p get_grade(95, 90, 93) == "A"   # true
p get_grade(50, 50, 95) == "D"   # true


## Possible solution:
def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F' 
  end
end

p get_grade(95, 90, 93) == "A"   # true
p get_grade(50, 50, 95) == "D"   # true
