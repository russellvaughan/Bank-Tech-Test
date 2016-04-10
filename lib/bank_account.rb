class BankAccount

	attr_reader :balance

	def initialize(transaction, print)
		@transaction = Transaction.new
		@printer = Print.new
		@balance = 0
	end

	def transaction(amount)
		@balance += amount
		@transaction.process(Date.new, amount)
	end

	def print
		@printer.record(@transaction.history)
	end

end