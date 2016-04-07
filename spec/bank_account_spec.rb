describe BankAccount do 

	subject(:account) { described_class.new }

	it { is_expected.to respond_to(:credit).with(1).argument }
	it { is_expected.to respond_to(:balance) }

	describe "#credit" do 
		it "increases the balance by the credited amount" do
			account.credit(100)
			expect(account.balance).to eq(100)
		end
	end
end