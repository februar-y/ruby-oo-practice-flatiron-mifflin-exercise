class Employee

    attr_reader :name
    attr_accessor :salary#, :manager_name

    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        #@manager_name
        Employee.all << self
    end
    
    def self.all
        @@all
    end

    def manager_name
       manager = Manager.all.select{|manager| manager.employee.include?(self)}
       manager[0].name
    end

    def self.paid_over(salary)
        self.all.find_all{|employee| employee.salary > salary}
    end

    def self.find_by_department(department)
        manager = Manager.all.select {|manager| manager.department == department}
        manager[0].employee[0]
    end

    def tax_bracket
        Employee.all.find_all {|employee| employee.salary.between?((self.salary - 1000),(self.salary + 1000)) }
    end
end
