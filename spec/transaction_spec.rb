describe Transaction do 

	subject(:transaction) { described_class.new }

	it { is_expected.to respond_to(:process).with(2).arguments }
	it { is_expected.to respond_to(:record) }

	it 'stores a record of transactions' do 
		allow(Time).to receive(:new){'10-01-2012'}
		transaction.process(Time.new, 100)
		expect(transaction.record).to eq(['10-01-2012', 100])
	end

end
