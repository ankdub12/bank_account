
class Bankaccount
	@@account_counter = 0
	attr_accessor = :account_no ,:checking_account_bal, :saving_account_bal,:interest_rate

	def initialize
		# @account_no = 0
		user_account_details
		@checking_account_bal = 0
		@saving_account_bal = 0
		@interest_rate = 0.05
		@@account_counter += 1
		puts "\nThe no of users are : #{@@account_counter}"
	end
	
	def user_account_details()
		puts @account_no = rand(0..1000000000000)
	end

	def user_checking_account(deposit,withdraw)
		@checking_account_bal += deposit
		if 
			@checking_account_bal < withdraw
			puts "insufficient balance"
		else
			@checking_account_bal -= withdraw
			puts "The Balance of checking account is #{@checking_account_bal}"
		end
		return self
	end

	def user_saving_account(deposit,withdraw)
		@saving_account_bal += deposit
		if 
			@saving_account_bal < withdraw
			puts "insufficient balance"
		else
			@saving_account_bal -= withdraw
			puts "The Balance of saving account is #{@saving_account_bal}"
		end
		return self
	end

	def no_of_accounts
		puts "The no of users are : #{@@account_counter}"
	end

	
	def account_information
		puts "Account Number: #{@account_no}"
		puts "The Total balance: %d" % (@saving_account_bal + @checking_account_bal)
		puts "Checking Account Balance: #{@checking_account_bal}"
		puts "Saving Account Balance: #{@saving_account_bal}"
		puts "The Bankinterest: #{@interest_rate}"
	
	end
private

end
user1 =  Bankaccount.new
user1.user_checking_account(1000,0)
user1.user_saving_account(200,0)
user1.account_information
user2 = Bankaccount.new
user2.user_checking_account(2000,0)
user1.user_saving_account(4000,0)
user2.account_information





