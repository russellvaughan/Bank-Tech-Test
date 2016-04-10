describe Print do 

	it { is_expected.to respond_to(:record).with(1).argument }

	it 'prints out a transaction statement' do 
		printer = Print.new
		transaction = [['10/01/2012', 1000]]
		expect(printer.record(transaction)).to eq("date || credit || debit || balance\n10/01/2012 || 1000.00 || || 1000.00\n")
	end 

end