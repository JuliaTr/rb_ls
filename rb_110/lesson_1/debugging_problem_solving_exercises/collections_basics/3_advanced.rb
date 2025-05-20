# Exercise (​advanced)​: Fix the issues in this nested collection 
# reference and assignment code
data = {
  employees: ['Bob', 'Sally', 'Tom'],
  departments: ['Engineering', 'Sales', 'Marketing'],
  locations: {
    main: '123 Main St',
    branch: '456 High St'
  }
}

# Extract the second employee
employee = data[:employees][1]
p employee  # "Sally"

# # Get the first letter of the last department:
# dept_letter = data[:department][2][0]
# p dept_letter   # undefined method `[]' for nil:NilClass (NoMethodError)

## Debug
dept_letter = data[:departments][2][0]
p dept_letter   # "M"

# # Change the branch location:
# data[:location][:branch] = '789 Center Ave'
# p data  # undefined method `[]=' for nil:NilClass (NoMethodError)

## Debug
branch_location = data[:locations][:branch] = '789 Center Ave'
p branch_location  # "789 Center Ave"
p data
# {:employees=>["Bob", "Sally", "Tom"], :departments=>["Engineering", "Sales", 
# "Marketing"], :locations=>{:main=>"123 Main St", :branch=>"789 Center Ave"}}

# Print the results:
puts "Employee: #{employee}"
puts "Department first letter: #{dept_letter}"
puts "Branch address #{branch_location}"
# Employee: Sally
# Department first letter: M
# Branch address 789 Center Ave
