describe BankAccount do 

	subject(:account) { described_class.new }

	
	it { is_expected.to respond_to(:credit).with(1).argument }
	it { is_expected.to respond_to(:debit).with(1).argument }
	it { is_expected.to respond_to(:balance) }

	describe "#credit" do 
		it "increases the balance by the credited amount" do
			account.credit(100)
			expect(account.balance).to eq(100)
		end

		it "calls a transaction method to record the transaction" do 
			expect_any_instance_of(Transaction).to receive(:process).with(Date.new,100)
			account.credit(100)
		end

	end

	describe "#debit" do 
		it "increases the balance by the credited amount" do
			account.debit(100)
			expect(account.balance).to eq(-100)
		end
		
		it "calls a transaction method to record the transaction" do 
			expect_any_instance_of(Transaction).to receive(:process).with(Date.new,100)
			account.debit(100)
		end

	end
end