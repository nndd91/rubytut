class Employee

	attr_reader :name, :salary
	def name=(value)
		if value == ""
			raise "Name cannot be blank!"
		else
			@name = value
		end
	end

	def salary=(value)
		if value < 0 || value == ""
			raise "Please enter a valid salary"
		else
			@salary = value
		end
	end

	def initialize(name = "Annoymous", salary = 0.0)
		self.name = name
		self.salary = salary
	end

	def print_pay_stub
		puts "Employee name: #{self.name}" #we can also just use name instead of self.name
		pay_for_period = self.salary * 14.0/365
		puts format("Salary for period: $%.2f", pay_for_period)
	end

end



alex=Employee.new
alex.name = "Alex"
alex.salary = 3000
alex.print_pay_stub
