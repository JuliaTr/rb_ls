=begin
Each employee must have a unique serial number. However, when we 
are testing our program, an exception is raised. Fix the code so 
that the program works as expected without error.
=end

## Possible solution
class EmployeeManagementSystem
  attr_reader :employer

  def initialize(employer)
    @employer = employer
    @employees = []
  end

  def add(employee)
    if exists?(employee)
      puts "Employee serial number is already in the system."
    else
      employees.push(employee)
      puts "Employee added."
    end
  end

  alias_method :<<, :add

  def remove(employee)
    if !exists?(employee)
      puts "Employee serial number is not in the system."
    else
      employees.delete(employee)
      puts "Employee deleted."
    end
  end

  def exists?(employee)
    employees.any? { |e| e == employee }
  end

  def display_all_employees
    puts "#{employer} Employees: "

    employees.each do |employee|
      puts ''
      puts employee.to_s
    end
  end

  private

  attr_accessor :employees
end

class Employee
  attr_reader :name

  def initialize(name, serial_number)
    @name = name
    @serial_number = serial_number
  end

  def ==(other)
    serial_number == other.serial_number
  end

  def to_s
    "Name: #{name}\n" +
    "Serial No: #{abbreviated_serial_number}"
  end

  # Before
  # private

  # attr_reader :serial_number

  # def abbreviated_serial_number
  #   serial_number[-4..-1]
  # end


  # After
  protected

  attr_reader :serial_number

  private

  def abbreviated_serial_number
    serial_number[-4..-1]
  end
end

miller_contracting = EmployeeManagementSystem.new('Miller Contracting')

becca = Employee.new('Becca', '232-4437-1932')
raul = Employee.new('Raul', '399-1007-4242')
natasha = Employee.new('Natasha', '399-1007-4242')

miller_contracting << becca  # Employee added.
miller_contracting << raul   # Employee added.
# Before
=begin
`==': private method `serial_number' called for 
<Employee:0x000000010b573a08 @name="Raul", 
@serial_number="399-1007-4242"> (NoMethodError)
=end

miller_contracting << raul  # Employee serial number is already in the system.
miller_contracting << natasha # Employee serial number is already in the system.
miller_contracting.remove(raul)  # Employee deleted.
miller_contracting.add(natasha)  # Employee added.

miller_contracting.display_all_employees
=begin
Miller Contracting Employees: 

Name: Becca
Serial No: 1932

Name: Natasha
Serial No: 4242
=end
