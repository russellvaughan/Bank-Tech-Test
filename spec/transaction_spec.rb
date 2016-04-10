describe Transaction do 

	subject(:transaction) { described_class.new }

	it { is_expected.to respond_to(:process).with(2).arguments }
	it { is_expected.to respond_to(:record) }
	it { is_expected.to respond_to(:history) }

	it 'stores a record of transactions' do 
		allow(Date).to receive(:new){'10-01-2012'}
		transaction.process(Date.new, 100)
		expect(transaction.record).to eq(['10-01-2012', 100])
	end
	
	it 'stores a record of multiple transactions' do 
		allow(Date).to receive(:new){'10-01-2012'}
		transaction.process(Date.new, 100)
		allow(Date).to receive(:new){'11-01-2012'}
		transaction.process(Date.new, -100)
		expect(transaction.history).to eq([['11-01-2012', -100],['10-01-2012', 100]])
	end


end
