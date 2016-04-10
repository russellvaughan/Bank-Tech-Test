class Transaction

	attr_reader :history, :record

	def initialize()
		@history = []
	end

	def process(date, amount)
		@record=[date,amount]
		@history.unshift(@record)
	end 
end