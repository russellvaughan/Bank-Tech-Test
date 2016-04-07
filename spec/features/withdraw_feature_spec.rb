describe "Withdrawing Funds" do 
	it "allows a user to deposit funds" do 
		account = BankAccount.new
		account.debit(100)
		expect(account.balance).to eq(-100)
	end
end