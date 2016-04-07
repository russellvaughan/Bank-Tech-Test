class BankAccount

	attr_reader :balance

	def initialize
		@balance = 0
	end

	def credit(amount)
		@balance += amount
		Transaction.new.process(Date.new, amount)
	end

	def debit(amount)
		@balance -= amount
		Transaction.new.process(Date.new, amount)
	end

	def print
	end

end