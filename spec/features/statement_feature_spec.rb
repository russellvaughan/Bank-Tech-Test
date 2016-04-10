describe "Requesting a Statement" do 
	it "prints a statemet" do 
		account = BankAccount.new(Transaction.new, Print.new)
		allow(Date).to receive(:new){'10/01/2012'}
		account.transaction(1000)
		allow(Date).to receive(:new){'13/01/2012'}
		account.transaction(2000)
		allow(Date).to receive(:new){'14/01/2012'}
		account.transaction(-500)
		expect(account.print).to eq("date || credit || debit || balance\n10/01/2012 || 1000.00 || || 1000.00\n13/01/2012 || 2000.00 || || 3000.00\n14/01/2012 || || 500.00 || 2500.00\n")
	end
end	