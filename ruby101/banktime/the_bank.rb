require_relative 'bank_classes'

@customers = []
@accounts = []

def welcome_screen

	@current_customer =  "" #lets us know who is signed in

	puts "Welcome to our TTS Bank"
	puts "Please choose from the following:"
	puts " - - - - - - - - - - - - - - - - "
	puts "1. Customer Sign-in"
	puts "2. New customer registration"

	choice = gets.chomp.to_i

	case choice 
	when 1
		sign_in
	when 2 
		sign_up("","")

	end
end 

def sign_in
	print "What's your name?"
	name = gets.chomp
	print "What's your location?"
	location = gets.chomp

	if @customers.empty?
		puts "no customers with that information"
		sign_up(name, location)
	end 

	customer_exists = false
	@customers.each do |customer|
		if name == customer.name && location == customer.location
			@current_customer = customer
			customer_exists = true
		end
	end

	if customer_exists
		account_menu #then you run the account menu
	else 
		puts "no customer with that info"
		puts "1. Try again?"
		puts "2. Sign up"

		choice = gets.chomp.to_i
		case choice 
		when 1 
			sign_in
		when 2 
			sign_up(name, location)
		end
	end
end

def sign_up(name, location)
	if name == "" && location == ""
		print "What's your name?"
		name = gets.chomp
		print "What's your location?"
		location = gets.chomp
	end

	@current_customer = Customer.new(name, location) #capital C means it's a new class
#pass the new customer into the new array we have created
	@customers.push(@current_customer)

	puts "Registration successful!"

	account_menu
end

def account_menu
	puts "account menu"
	puts " - - - - - - - "
	puts "1. create new account"
	puts "2. review an account"
	puts "3. sign out"

	choice = gets.chomp.to_i
	case choice 
	when 1 
		create_account
	when 2
		review_account
	when 3 
		puts "thanks for banking with us"
		welcome_screen
	else 
		puts "invalid selection"
		account_menu
	end
end

def create_account

	print "How much will your initial deposit be? $"
	amount = gets.chomp.to_f

	print "What type of account will you be opening?"
	acct_type = gets.chomp

	new_acct = Account.new(@current_customer, amount, (@accounts.length+1), acct_type) #starting a new class again

	@accounts.push(new_acct)

	puts "new account created!"

	account_menu
end

def review_account
	@current_account = ""
	print "Which account type do you want to review?"
	type = gets.chomp.downcase

	account_exists = false

	@accounts.each do |account| #each.do to loop through the iteration

		if @current_customer = account.customer && type == account.acct_type.downcase
			@current_account = account
			account_exists  = true
		end
	end

	if account_exists
		current_account_actions

	else 
		puts "try again"
		review_account
	end
end

 def current_account_actions

 	puts "Choose from the following"
 	puts " - - - - - - - - - - - - "
 	puts "1. Check your balance"
 	puts "2. Make a deposit"
 	puts "3. Make a withdrawal"
 	puts "4. Return to account menu"
 	puts "5. Sign out"

 	choice = gets.chomp.to_i

 	case choice
 	when 1 
 		puts "Current balance is $#{'%0.2f'%(@current_account.balance)}"
 		current_account_actions
 	when 2 
 		@current_account.deposit
 		current_account_actions
 	when 3 
 		@current_account.withdrawal
 		current_account_actions
 	when 4
 		review_account
 	when 5 
 		puts "Thanks!"
 		welcome_screen
 	else
 		puts "Invalid selection"
 		current_account_actions
 	end
 end

 welcome_screen




