class Transaction

	attr_reader :record

	def initialize
		@record = []
	end

	def process(date, amount)
		@record.push(date,amount)
	end 

end