class BankAccount

	attr_reader :balance

	def initialize(transaction)
		@transaction = Transaction.new
		@balance = 0
	end

	def transaction(amount)
		@balance += amount
		@transaction.process(Date.new, amount)
	end

	def print

	end

end