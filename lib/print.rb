class Print

	def initialize
		@balance = 0
		@statement = ''
		@statement_header = "date || credit || debit || balance\n"
	end

	def record(transactions)
		transactions.reverse.each do |transaction|
			transaction.each_slice(2) do |date,amount|
				@statement +=  "#{date} || #{credit(amount)}|| #{debit(amount)}|| #{balance(amount)}\n"
			end
		end
		@statement_header + @statement
	end

	private

	def format_number(amount)
	sprintf('%.2f ', amount)
	end

	def credit(amount)
	format_number(amount) if amount > 0
	end

	def debit(amount)
	format_number(amount.abs) if amount < 0
	end

	def balance(amount)
	format_number(@balance += amount).strip
	end

end