require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here


# Manager -< Employee
puts "Test \n\n\n"

# Employees initialize(name, salary)
jim = Employee.new('Jim', 25000)
dwight = Employee.new('Dwight', 23000 )
pam = Employee.new('Pam', 24500)
erin = Employee.new('Erin', 25500)
stanley = Employee.new('Stanley', 27000)

# Managers initialize(name, department, age, employee)
michael = Manager.new('Michael', 'Sales', 43, [jim, dwight, stanley])
carl = Manager.new('Carl', 'HR', 52, [pam, erin])

#p michael.hire_employee('Janice', '30000')

#p Employee.paid_over(25000)

#p Employee.find_by_department('HR')

p pam.tax_bracket