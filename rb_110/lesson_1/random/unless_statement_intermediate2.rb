# ​Exercise (intermediate)​: What will the following code output?
def check_status(status)
  return "Error: No status provided" unless status
  return "Active" unless status == "inactive"
  "Inactive"
end

puts check_status("active")    # Active
puts check_status("inactive")  # Inactive
puts check_status(nil)         # Error: No status provided
