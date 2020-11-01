class Manager

    attr_reader :name
    attr_accessor :age, :department, :employee

    @@all = []

    def initialize(name, department, age, employee)
        @name = name
        @department = department
        @age = age
        @employee = employee
        Manager.all << self
    end

    def self.all 
        @@all
    end
    

    def hire_employee(name, salary)
        self.employee << Employee.new(name, salary)
    end

    def self.all_departments
        self.all.map {|manager| manager.department}
    end

    # Creates an array with only age integers, sums that array, 
    # divides by the number of manager instances in self.all aka
    # Manager.all
    def self.average_age
        self.all.map {|manager| manager.age}.sum / self.all.count
    end

end
