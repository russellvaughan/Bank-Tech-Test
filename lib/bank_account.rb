class BankAccount

	attr_reader :balance

	def initialize
		@balance = 0
	end

	def transaction(amount)
		@balance += amount
		Transaction.new.process(Date.new, amount)
	end

	def print
	end

end