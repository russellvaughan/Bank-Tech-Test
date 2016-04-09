class Transaction

	attr_reader :history, :record

	def initialize
		@record = []
		@history = []
	end

	def process(date, amount)
		@record = []
		@record.push(date,amount)
		@history.unshift(@record)
	end 



end