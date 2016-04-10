# As a user
# So that I can keep track of my money
# I would like to a statment that shows, (date, amount, balance)
describe "Requesting a Statement" do 
	it "prints a statemet" do 
		account = BankAccount.new(Transaction.new)
		allow(Time).to receive(:new){'10-01-2012'}
		account.transaction(100)
		expect(account.print).to eq("date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00")
	end
end	