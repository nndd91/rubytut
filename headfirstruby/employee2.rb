class Employee

	attr_reader :name

	def name=(value)
		if value == ""
			raise "Name cannot be blank!"
		else
			@name = value
		end
	end

	def initialize(name = "Annoymous")
		self.name = name
	end

	def print_name
		puts "Employee Name: #{name}"
	end

end

class SalariedEmployee < Employee

	attr_reader :salary

	def salary=(value)
		if value < 0 || value == ""
			raise "Please enter a valid salary"
		else
			@salary = value
		end
	end

	def initialize(name = "Annoymous", salary = 0.0)
		super(name)
		self.salary = salary
	end

	def print_pay_stub
		print_name
		pay_for_period = self.salary * 14.0/365 #can also use salary instead of self.salary
		puts format("Salary for period: $%.2f", pay_for_period)
	end
end

class HourlyEmployee < Employee
	attr_reader :hourly_wage, :hours_per_week

	def hourly_wage=(hourly_wage)
		if hourly_wage < 0 || hourly_wage == ""
			raise "Please enter a valid hourly wage!"
		else
			@hourly_wage = hourly_wage
		end
	end

	def hours_per_week=(hours_per_week)
		if hours_per_week == "" || hours_per_week < 0
			raise "Please enter a valid time for hours per week!"
		else
			hours_per_week = hours_per_week
		end
	end

	def initialize(hourly_wage = 0.0, hours_per_week = 0)
		super(name)
		self.hourly_wage = hourly_wage
		self.hours_per_week = hours_per_week
	end

	def print_pay_stub
		print_name
		pay_for_period = hourly_wage * hours_per_week * 2
		formatted_pay = format("%.2f", pay_for_period)
		puts "Pay this period: #{formatted_pay}"
	end

	def self.security_guard(name)
		HourlyEmployee.new(name, 19.25, 30)
	end

	def self.cashier(name)
		HourlyEmployee.new(name, 12.75, 25)
	end

	def self.janitor(name)
		HourlyEmployee.new(name, 10.50, 20)
	end
end


alex=SalariedEmployee.new
alex.name = "Alex"
alex.salary = 3000
alex.print_pay_stub
