describe "Depositing Funds" do
	it "allows a user to deposit funds" do 
		account = BankAccount.new(Transaction.new, Print.new)
		account.transaction(100)
		expect(account.balance).to eq(100)
	end
end