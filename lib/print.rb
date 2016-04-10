class Print

	def initialize
		@balance = 0
		@statement = ''
	end

	def record(transaction)
		transaction.each do |transaction|
			transaction.each_slice(2) do |date,amount|
				@statement +=  "#{date} || #{format(amount) if amount > 0} || #{format(amount.abs) if amount < 0}|| #{format(@balance += amount)}\n"
			end
		end
		"date || credit || debit || balance\n" + @statement
	end

	private

	def format(amount)
	sprintf('%.2f', amount)
	end

end