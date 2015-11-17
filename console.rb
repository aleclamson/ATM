require_relative 'user'

class Console
	
	def show
		print "Enter pin now: "
		@pin = gets.chomp
		@user = User.new(@pin)
		choices
		@user.check_balance
	end

	def choices
		print """
1 Deposit
2 Withdrawl
3 Quick Cash
4 Check Balance
5 Quit
"""
		case
		when 1
			deposit
		when 2
			withdrawl
		when 3
			quick_cash
		when 4
			@user.check_balance
		when 5
			quit
		end
	end

	def deposit
		puts "How much would you like to deposit?"
		@user.change_balance(gets.chomp.to_i)
	end
	
	def withdrawl
		puts "How much would you like to withdrawl?"
		@user.change_balance(gets.chomp.to_i)
	end

	def quick_cash
		print """
1 $20
2 $40
3 $60
4 $80
5 $100
"""
		case gets.chomp.to_i
		when 1
			@user.change_balance(20)
		when 2
			@user.change_balance(40)
		when 3
			@user.change_balance(60)
		when 4
			@user.change_balance(80)
		when 5
			@user.change_balance(100)
		end
	end

	def you_cant_do_that
		print "You do not have enough money for that!"
	end

end